import * as fs from 'fs';
import * as path from 'path';
import { expect } from "chai";
import { XMLParser, XMLBuilder } from 'fast-xml-parser';
import chorpiler from 'chorpiler';
import { Simulation } from 'chorpiler/lib/Simulator/Simulator';

describe('XML Files in data/raw', () => {
  const rawDataPath = path.join(__dirname, '../data/sap-sam/raw');
  const intDataPath = path.join(__dirname, '../data/sap-sam/int');
  const outputDataPath = path.join(__dirname, '../data/sap-sam/');

  // Helper to detect the BPMN prefix from the parsed JSON object
  function detectPrefix(jsonObj: any): string {
    const definitionsKey = Object.keys(jsonObj).find(k => k.endsWith(':definitions')) || Object.keys(jsonObj).find(k => k === 'definitions');
    if (!definitionsKey) throw new Error('No definitions element found!');
    return definitionsKey.includes(':') ? definitionsKey.split(':')[0] : '';
  }

  // Recursively remove all `extensionElements` (with any prefix) from the whole process tree
  const removeExtensionElements = (node: any) => {
    if (Array.isArray(node)) {
      node.forEach(removeExtensionElements);
    } else if (typeof node === 'object' && node !== null) {
      // Remove any key that ends with ':extensionElements' or is 'extensionElements'
      for (const key of Object.keys(node)) {
        if (key.endsWith(':extensionElements') || key === 'extensionElements') {
          delete node[key];
        }
      }
      for (const key in node) {
        if (Object.prototype.hasOwnProperty.call(node, key)) {
          removeExtensionElements(node[key]);
        }
      }
    }
  };

  // Updated processExclusiveGateways and mergeEndEvents to use prefix
  const processExclusiveGateways = (process: any, prefix: string) => {
    const exGatewayKey = prefix ? `${prefix}:exclusiveGateway` : 'exclusiveGateway';
    const seqFlowKey = prefix ? `${prefix}:sequenceFlow` : 'sequenceFlow';
    const outgoingKey = prefix ? `${prefix}:outgoing` : 'outgoing';

    const exclusiveGateways = Array.isArray(process[exGatewayKey])
      ? process[exGatewayKey]
      : process[exGatewayKey] ? [process[exGatewayKey]] : [];

    let numberOfConds = 0;

    exclusiveGateways.forEach((gateway) => {
      if (gateway && gateway[outgoingKey]) {
        const outgoing = Array.isArray(gateway[outgoingKey])
          ? gateway[outgoingKey]
          : [gateway[outgoingKey]];

        if (!gateway['@_default'] && outgoing.length > 0) {
          gateway['@_default'] = outgoing[0];
        }

        if (outgoing.length > 1) {
          const sequenceFlows = Array.isArray(process[seqFlowKey])
            ? process[seqFlowKey]
            : process[seqFlowKey] ? [process[seqFlowKey]] : [];

          for (const outgoingId of outgoing) {
            if (outgoingId == gateway['@_default']) continue;

            const sequenceFlow = sequenceFlows.find(
              (flow) => flow['@_id'] === outgoingId
            );
            if (sequenceFlow) {
              const conditionID = 1 << numberOfConds++;
              sequenceFlow['@_name'] = `conditions & ${conditionID} == ${conditionID}`;
              sequenceFlow['conditionExpression'] = {
                '@_xsi:type': prefix ? `${prefix}:tFormalExpression` : 'bpmn2:tFormalExpression',
                '@_language': 'Solidity',
                '#text': `conditions & ${conditionID} == ${conditionID}`,
              };
            }
          }
        }
      }
    });

    removeExtensionElements(process);
  };

  const mergeEndEvents = (process: any, prefix: string) => {
    const endEventKey = prefix ? `${prefix}:endEvent` : 'endEvent';
    const incomingKey = prefix ? `${prefix}:incoming` : 'incoming';
    let endEvents = process[endEventKey];
    if (!endEvents) return;
    endEvents = Array.isArray(endEvents) ? endEvents : [endEvents];

    if (endEvents.length > 1) {
      const mergedEndEvent = endEvents[0];
      mergedEndEvent[incomingKey] = endEvents.flatMap((endEvent: any) =>
        Array.isArray(endEvent[incomingKey])
          ? endEvent[incomingKey]
          : [endEvent[incomingKey]]
      );
      mergedEndEvent[incomingKey] = [...new Set(mergedEndEvent[incomingKey])];
      process[endEventKey] = mergedEndEvent;
    }
  };

  it('should iterate, parse, and modify all XML files in data/raw', async () => {
    const files = fs.readdirSync(rawDataPath);
    const parser = new XMLParser({ ignoreAttributes: false, removeNSPrefix: false });
    const builder = new XMLBuilder({ ignoreAttributes: false, format: true });

    for (const file of files) {
      if (file.endsWith('.xml') || file.endsWith('.bpmn')) {
        const filePath = path.join(rawDataPath, file);
        const xmlContent = fs.readFileSync(filePath, 'utf-8');
        const jsonObj = parser.parse(xmlContent);

        // Detect prefix once
        const prefix = detectPrefix(jsonObj);

        // Use prefix for all element access
        const definitionsKey = prefix ? `${prefix}:definitions` : 'definitions';
        const defs = jsonObj[definitionsKey];

        const choreographyKey = Object.keys(defs).find(k => k.endsWith(':choreography')) || Object.keys(defs).find(k => k === 'choreography');
        if (!choreographyKey) continue;
        const choreography = defs[choreographyKey];
        const choreographyId = choreography['@_id'].replace(/-/g, '_');
        const oldId = choreography['@_id'];
        choreography['@_id'] = choreographyId;

        // Replace all occurrences of the old ID with the new ID
        const replaceIds = (obj: any) => {
          if (typeof obj === 'object' && obj !== null) {
            for (const key in obj) {
              if (typeof obj[key] === 'string' && obj[key] === oldId) {
                obj[key] = choreographyId;
              } else {
                replaceIds(obj[key]);
              }
            }
          }
        };
        replaceIds(jsonObj);

        if (!choreographyId) {
          throw new Error(`Choreography ID not found in file: ${file}`);
        }

        const process = defs[choreographyKey];

        // Use prefix for gateways and end events
        processExclusiveGateways(process, prefix);
        mergeEndEvents(process, prefix);

        // Remove extensionElements everywhere (with or without prefix)
        removeExtensionElements(defs);

        // Remove ignavioDiagramMetaData elements if they exist (with dynamic prefix)
        const signavioMetaKey = Object.keys(defs).find(k => k.endsWith(':SignavioDiagramMetaData')) || Object.keys(defs).find(k => k === 'ignavioDiagramMetaData');
        if (signavioMetaKey && defs[signavioMetaKey]) {
          delete defs[signavioMetaKey];
        }
        // Also remove signavioMetaData if present (with or without prefix)
        const signavioMetaDataKey = Object.keys(defs).find(k => k.endsWith(':signavioMetaData')) || Object.keys(defs).find(k => k === 'signavioMetaData');
        if (signavioMetaDataKey && defs[signavioMetaDataKey]) {
          delete defs[signavioMetaDataKey];
        }

        // Convert the modified JSON back to XML
        let updatedXmlContent = builder.build(jsonObj);

        // Do NOT replace the root <prefix:definitions ...> header, keep the original header as in the input XML

        // Write the modified file to the data/ directory with the choreography ID as the filename
        const outputFilePath = path.join(intDataPath, `${choreographyId}.bpmn`);
        fs.writeFileSync(outputFilePath, updatedXmlContent, 'utf-8');

        // Ensure the file is still readable after modification
        expect(() => fs.readFileSync(outputFilePath, 'utf-8')).not.throw();
      }
    }
  });

  it('should verify that simulator can run the bpmn', async () => {
    const files = fs.readdirSync(intDataPath);
    const errors: { file: string; error: string }[] = [];
    const parser = new chorpiler.Parser();

    for (const file of files) {
      if (file.endsWith('.bpmn')) {
        try {
          const bpmnXML = fs.readFileSync(path.join(intDataPath, file));
          const iNet = await parser.fromXML(bpmnXML);
          const contractGenerator = new chorpiler.generators.sol.DefaultContractGenerator(iNet[0]);
          // Write the file to data
          const outputFilePath = path.join(outputDataPath, file);
          fs.writeFileSync(outputFilePath, bpmnXML, 'utf-8');

          try {
            await contractGenerator.compile();
          } catch (err) {
            errors.push({ file, error: `Contract generation error: ${(err as Error).message}` });
          }
        } catch (err) {
          errors.push({ file, error: `Parsing error: ${(err as Error).message}` });
        }
      }
    }

    if (errors.length > 0) {
      console.error("Error Report:");
      console.log(
      errors
        .map(({ file, error }) => `File: ${file}\nError: ${error}\n`)
        .join("\n")
      );
    } else {
      console.log("All files parsed and compiled successfully.");
    }
  });

  it('should prepare simulation of the bpmn files', async () => {
    const sim = new chorpiler.utils.Simulator(); 
    sim.bpmnDir = "./data/sap-sam/";
    sim.contractDir = "./contracts/chorpiler";
    sim.xesDir = "./xes";

    return sim.generate("comp_", 
      new Simulation({
        unfoldSubNets: true,
        loopProtection: false,
        parseConditions: true
      }));
  });
})