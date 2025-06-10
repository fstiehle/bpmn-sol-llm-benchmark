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

  // Toggle to control BPMNDiagram removal
  const REMOVE_BPMN_VISUAL_DIAGRAM = true; // Set to false to keep diagrams

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

  const mergeEndEvents = (process: any, prefix: string, defs: any) => {
    const endEventKey = prefix ? `${prefix}:endEvent` : 'endEvent';
    const incomingKey = prefix ? `${prefix}:incoming` : 'incoming';
    const seqFlowKey = prefix ? `${prefix}:sequenceFlow` : 'sequenceFlow';

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

      // Collect IDs of all end events except the merged one
      const mergedEndEventId = mergedEndEvent['@_id'];
      const toDeleteIds = endEvents.slice(1).map((ev: any) => ev['@_id']);

      // Keep only the merged end event in the process (preserve array/object structure)
      if (Array.isArray(process[endEventKey])) {
        process[endEventKey] = [mergedEndEvent];
      } else {
        process[endEventKey] = mergedEndEvent;
      }

      // Update sequenceFlow targetRefs to point to the merged end event
      const incomingIds = mergedEndEvent[incomingKey];
      let sequenceFlows = process[seqFlowKey];
      if (sequenceFlows) {
        sequenceFlows = Array.isArray(sequenceFlows) ? sequenceFlows : [sequenceFlows];
        for (const flow of sequenceFlows) {
          if (incomingIds.includes(flow['@_id'])) {
            flow['@_targetRef'] = mergedEndEventId;
          }
        }
      }

      // --- Remove old end event shapes from BPMNDiagram(s) ---
      // Find all diagram keys (e.g. ns3:BPMNDiagram)
      Object.keys(defs).forEach(diagKey => {
        if (diagKey.endsWith(':BPMNDiagram') || diagKey === 'BPMNDiagram') {
          const diagrams = Array.isArray(defs[diagKey]) ? defs[diagKey] : [defs[diagKey]];
          diagrams.forEach((diagram: any) => {
            // Find all plane keys (e.g. ns3:BPMNPlane)
            Object.keys(diagram).forEach(planeKey => {
              if (planeKey.endsWith(':BPMNPlane') || planeKey === 'BPMNPlane') {
                const planes = Array.isArray(diagram[planeKey]) ? diagram[planeKey] : [diagram[planeKey]];
                planes.forEach((plane: any) => {
                  // Find all shape keys (e.g. ns3:BPMNShape)
                  Object.keys(plane).forEach(shapeKey => {
                    if (shapeKey.endsWith(':BPMNShape') || shapeKey === 'BPMNShape') {
                      let shapes = plane[shapeKey];
                      if (!shapes) return;
                      shapes = Array.isArray(shapes) ? shapes : [shapes];
                      // Filter out shapes whose bpmnElement is in toDeleteIds
                      const filteredShapes = shapes.filter((shape: any) => !toDeleteIds.includes(shape['@_bpmnElement']));
                      // Write back, preserving array/object structure
                      plane[shapeKey] = Array.isArray(plane[shapeKey])
                        ? filteredShapes
                        : filteredShapes[0] || null;
                    }
                  });
                });
              }
            });
          });
        }
      });
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
        mergeEndEvents(process, prefix, defs);

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

        // Remove BPMNDiagram(s) if toggle is set
        if (REMOVE_BPMN_VISUAL_DIAGRAM) {
          for (const key of Object.keys(defs)) {
            if (key.endsWith(':BPMNDiagram') || key === 'BPMNDiagram') {
              delete defs[key];
            }
          }
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
        loopProtection: true,
        parseConditions: true
      }));
  });

  it('should extract element type counts for each BPMN model and save to CSV', async () => {
    const files = fs.readdirSync(rawDataPath);
    const parser = new XMLParser({ ignoreAttributes: false, removeNSPrefix: false });
    const results: any[] = [];
    const allTypes = new Set<string>();

    for (const file of files) {
      if (file.endsWith('.xml') || file.endsWith('.bpmn')) {
        const filePath = path.join(rawDataPath, file);
        const xmlContent = fs.readFileSync(filePath, 'utf-8');
        const jsonObj = parser.parse(xmlContent);
        const prefix = detectPrefix(jsonObj);
        const definitionsKey = prefix ? `${prefix}:definitions` : 'definitions';
        const defs = jsonObj[definitionsKey];
        // Find the process or choreography key
        const processKey = Object.keys(defs).find(k => k.endsWith(':process')) || Object.keys(defs).find(k => k === 'process');
        const choreographyKey = Object.keys(defs).find(k => k.endsWith(':choreography')) || Object.keys(defs).find(k => k === 'choreography');
        const rootKey = processKey || choreographyKey;
        if (!rootKey) continue;
        const root = defs[rootKey];
        // Count all element types (direct children)
        const typeCounts: Record<string, number> = {};
        for (const key of Object.keys(root)) {
          // Only count element keys (not attributes)
          if (!key.startsWith('@_')) {
            const arr = Array.isArray(root[key]) ? root[key] : [root[key]];
            typeCounts[key] = arr.length;
            allTypes.add(key);
          }
        }
        const modelName = choreographyKey && defs[choreographyKey] ? defs[choreographyKey]['@_id'] : file;
        results.push({ model: modelName, ...typeCounts });
      }
    }
    // Prepare CSV header
    const header = ['model', ...Array.from(allTypes)];
    const csvRows = [header.join(',')];
    for (const row of results) {
      const values = header.map(h => h === 'model' ? row.model : (row[h] || 0));
      csvRows.push(values.join(','));
    }
    const csvPath = path.join(outputDataPath, 'meta_data.csv');
    fs.writeFileSync(csvPath, csvRows.join('\n'), 'utf-8');
    console.log(`Element type counts written to ${csvPath}`);
  });

  it('should extract element type counts for each BPMN model and save to CSV (with gatewayDirection)', async () => {
    const files = fs.readdirSync(outputDataPath);
    const parser = new XMLParser({ ignoreAttributes: false, removeNSPrefix: false });
    const results: any[] = [];
    const allTypes = new Set<string>();
    const allGatewayDirections = new Set<string>();

    // Map each model to its original file name from data/raw, and use that as the 'original_file' in meta_data.csv, even if the file name changed in int/output.
    const fileToOriginal: Record<string, string> = {};
    // Build a mapping from model name to original file name in data/raw
    {
      const rawFiles = fs.readdirSync(rawDataPath);
      const parser = new XMLParser({ ignoreAttributes: false, removeNSPrefix: false });
      for (const file of rawFiles) {
        if (file.endsWith('.xml') || file.endsWith('.bpmn')) {
          const filePath = path.join(rawDataPath, file);
          const xmlContent = fs.readFileSync(filePath, 'utf-8');
          const jsonObj = parser.parse(xmlContent);
          const prefix = detectPrefix(jsonObj);
          const definitionsKey = prefix ? `${prefix}:definitions` : 'definitions';
          const defs = jsonObj[definitionsKey];
          const choreographyKey = Object.keys(defs).find(k => k.endsWith(':choreography')) || Object.keys(defs).find(k => k === 'choreography');
          if (!choreographyKey) continue;
          const choreography = defs[choreographyKey];
          const choreographyId = choreography['@_id'] ? choreography['@_id'].replace(/-/g, '_') : file;
          fileToOriginal[choreographyId] = file;
        }
      }
    }
    for (const file of files) {
      if (file.endsWith('.xml') || file.endsWith('.bpmn')) {
        const filePath = path.join(outputDataPath, file);
        const xmlContent = fs.readFileSync(filePath, 'utf-8');
        const jsonObj = parser.parse(xmlContent);
        const prefix = detectPrefix(jsonObj);
        const definitionsKey = prefix ? `${prefix}:definitions` : 'definitions';
        const defs = jsonObj[definitionsKey];
        // Find the process or choreography key
        const processKey = Object.keys(defs).find(k => k.endsWith(':process')) || Object.keys(defs).find(k => k === 'process');
        const choreographyKey = Object.keys(defs).find(k => k.endsWith(':choreography')) || Object.keys(defs).find(k => k === 'choreography');
        const rootKey = processKey || choreographyKey;
        if (!rootKey) continue;
        const root = defs[rootKey];
        // Count all element types (direct children)
        const typeCounts: Record<string, number> = {};
        const gatewayDirectionCounts: Record<string, number> = {};
        for (const key of Object.keys(root)) {
          if (!key.startsWith('@_')) {
            const arr = Array.isArray(root[key]) ? root[key] : [root[key]];
            // If this is a gateway, check for gatewayDirection
            if (key.toLowerCase().includes('gateway')) {
              arr.forEach((el: any) => {
                const dir = el['@_gatewayDirection'] || 'unspecified';
                const colName = `${key}__${dir}`;
                gatewayDirectionCounts[colName] = (gatewayDirectionCounts[colName] || 0) + 1;
                allGatewayDirections.add(colName);
              });
            } else {
              typeCounts[key] = arr.length;
              allTypes.add(key);
            }
          }
        }
        const modelName = choreographyKey && defs[choreographyKey] ? defs[choreographyKey]['@_id'] : file;
        const modelNameUnderscore = modelName ? modelName.replace(/-/g, '_') : file;
        const originalFile = fileToOriginal[modelNameUnderscore] || file;
        results.push({ model: modelName, original_file: originalFile, ...typeCounts, ...gatewayDirectionCounts });
      }
    }
    // Prepare CSV header
    const header = ['model', 'original_file', ...Array.from(allTypes), ...Array.from(allGatewayDirections)];
    const csvRows = [header.join(',')];
    for (const row of results) {
      const values = header.map(h => row[h] || 0);
      csvRows.push(values.join(','));
    }
    const csvPath = path.join(outputDataPath, 'meta_data.csv');
    fs.writeFileSync(csvPath, csvRows.join('\n'), 'utf-8');
    console.log(`Element type counts (with gatewayDirection) written to ${csvPath}`);
  });
})