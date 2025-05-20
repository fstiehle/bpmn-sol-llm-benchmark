import * as fs from 'fs';
import * as path from 'path';
import { expect } from "chai";
import { XMLParser, XMLBuilder } from 'fast-xml-parser';
import chorpiler from 'chorpiler';

describe('XML Files in data/raw', () => {
  const rawDataPath = path.join(__dirname, '../data/sap-sam/raw');
  const intDataPath = path.join(__dirname, '../data/sap-sam/int');
  const outputDataPath = path.join(__dirname, '../data/sap-sam/');

  const processExclusiveGateways = (process: any) => {
    const exclusiveGateways = Array.isArray(process['exclusiveGateway'])
      ? process['exclusiveGateway']
      : [process['exclusiveGateway']];

    exclusiveGateways.forEach((gateway) => {
      if (gateway && gateway['outgoing']) {
        const outgoing = Array.isArray(gateway['outgoing'])
          ? gateway['outgoing']
          : [gateway['outgoing']];

        if (!gateway['@_default'] && outgoing.length > 0) {
          // Add the first outgoing element as default
          gateway['@_default'] = outgoing[0];
        }

        if (outgoing.length > 1) {
          // Look for corresponding sequenceFlow elements
          const sequenceFlows = Array.isArray(process['sequenceFlow'])
            ? process['sequenceFlow']
            : [process['sequenceFlow']];

          outgoing.forEach((outgoingId) => {
            const sequenceFlow = sequenceFlows.find(
              (flow) => flow['@_id'] === outgoingId
            );
            if (sequenceFlow && !sequenceFlow['conditionExpression']) {
              sequenceFlow['conditionExpression'] = {
                '@_xsi:type': 'bpmn2:tFormalExpression',
                '@_language': 'Solidity',
                '#text': 'items==true',
              };
            }
          });
        }
      }
    });
  };

  const mergeEndEvents = (process: any) => {
    const endEvents = Array.isArray(process['endEvent'])
      ? process['endEvent']
      : [process['endEvent']];

    if (endEvents.length > 1) {
      const mergedEndEvent = endEvents[0];
      mergedEndEvent['incoming'] = endEvents.flatMap((endEvent) =>
        Array.isArray(endEvent['incoming'])
          ? endEvent['incoming']
          : [endEvent['incoming']]
      );

      // Remove duplicates
      mergedEndEvent['incoming'] = [...new Set(mergedEndEvent['incoming'])];

      // Replace all endEvents with the merged one
      process['endEvent'] = mergedEndEvent;
    }
  };
 
  it('should iterate, parse, and modify all XML files in data/raw', async () => {
    const files = fs.readdirSync(rawDataPath);
    const parser = new XMLParser({ ignoreAttributes: false, removeNSPrefix: true });
    const builder = new XMLBuilder({ ignoreAttributes: false, format: true });

    for (const file of files) {
      if (file.endsWith('.xml') || file.endsWith('.bpmn')) {
        const filePath = path.join(rawDataPath, file);
        const xmlContent = fs.readFileSync(filePath, 'utf-8');
        const jsonObj = parser.parse(xmlContent);

        // Look for choreography ID and process elements
        if (jsonObj['definitions'] && jsonObj['definitions']['choreography']) {
          const choreography = jsonObj['definitions']['choreography'];
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

          const process = jsonObj['definitions']['choreography'];

          // Process exclusive gateways
          processExclusiveGateways(process);

          // Merge end events
          mergeEndEvents(process);

          // Convert the modified JSON back to XML
          const updatedXmlContent = builder.build(jsonObj);

          // Write the modified file to the data/ directory with the choreography ID as the filename
          const outputFilePath = path.join(intDataPath, `${choreographyId}.bpmn`);
          fs.writeFileSync(outputFilePath, updatedXmlContent, 'utf-8');

          // Ensure the file is still readable after modification
          expect(() => fs.readFileSync(outputFilePath, 'utf-8')).not.throw();
        }
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

    return sim.generate();
  });

})