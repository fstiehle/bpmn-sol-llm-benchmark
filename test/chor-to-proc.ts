import { XMLParser, XMLBuilder } from "fast-xml-parser";
import fs from "fs";
import path from "path";
import { expect } from "chai";

const BPMN_HEADER = `<?xml version="1.0" encoding="UTF-8"?>
<definitions xmlns="http://www.omg.org/spec/BPMN/20100524/MODEL" xmlns:bpmndi="http://www.omg.org/spec/BPMN/20100524/DI" xmlns:omgdi="http://www.omg.org/spec/DD/20100524/DI" xmlns:omgdc="http://www.omg.org/spec/DD/20100524/DC" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" id="sid-38422fae-e03e-43a3-bef4-bd33b32041b2" targetNamespace="http://bpmn.io/bpmn" exporter="bpmn-js (https://demo.bpmn.io)" exporterVersion="18.6.1">
`;

function ensureBpmnHeader(xml: string): string {
  let cleaned = xml.replace(/<\?xml[^>]*\?>\s*/i, "");
  cleaned = cleaned.replace(/<definitions[\s\S]*?>/i, "");
  cleaned = cleaned.replace(/<\/definitions>\s*$/i, "");
  return BPMN_HEADER + cleaned.trim() + "\n</definitions>\n";
}

function convertChoreographyToProcess(xmlInput: string): string {
  const parser = new XMLParser({
    ignoreAttributes: false,
    attributeNamePrefix: "",
    removeNSPrefix: true,
  });
  const builder = new XMLBuilder({
    ignoreAttributes: false,
    attributeNamePrefix: "",
    suppressEmptyNode: false,
    format: true,
  });

  const inputObj = parser.parse(xmlInput);
  const definitions = inputObj.definitions;
  const choreography = definitions.choreography;
  const participants = Array.isArray(choreography.participant)
    ? choreography.participant
    : [choreography.participant];

  // Use original collaboration id if present, else fallback
  const collabId = (definitions.collaboration && definitions.collaboration.id) || "Collaboration_1";
  // Use original participant ids if present, else fallback
  const participantObjs = participants.map((p: any) => ({
    id: p.id,
    processRef: "Process_1",
  }));

  // Lanes for each participant
  const lanes = participants.map((p: any) => ({
    id: `Lane_${p.id}`,
    name: p.name,
    flowNodeRef: [],
  }));

  const getArr = (obj: any) => (Array.isArray(obj) ? obj : obj ? [obj] : []);
  const choreographyTasks = getArr(choreography.choreographyTask);
  const exclusiveGateways = getArr(choreography.exclusiveGateway);
  const parallelGateways = getArr(choreography.parallelGateway);
  const startEvents = getArr(choreography.startEvent);
  const endEvents = getArr(choreography.endEvent);
  const sequenceFlows = getArr(choreography.sequenceFlow);

  // Assign flowNodeRefs
  const laneMap: Record<string, string[]> = {};
  for (const t of choreographyTasks) {
    const laneId = `Lane_${t.initiatingParticipantRef}`;
    if (!laneMap[laneId]) laneMap[laneId] = [];
    laneMap[laneId].push(t.id);
  }
  const allOtherNodes = [
    ...exclusiveGateways,
    ...parallelGateways,
    ...startEvents,
    ...endEvents,
  ];
  for (const node of allOtherNodes) {
    const laneId = lanes[0]?.id;
    if (!laneMap[laneId]) laneMap[laneId] = [];
    laneMap[laneId].push(node.id);
  }
  for (const lane of lanes) {
    lane.flowNodeRef = laneMap[lane.id] || [];
  }

  // Build process
  const process: any = {
    id: "Process_1",
    isExecutable: "false",
    laneSet: { id: "LaneSet_1", lane: lanes },
    task: choreographyTasks.map((t) => ({
      id: t.id,
      name: t.name,
      incoming: t.incoming,
      outgoing: t.outgoing,
    })),
    exclusiveGateway: exclusiveGateways.map((g) => ({
      id: g.id,
      incoming: g.incoming,
      outgoing: g.outgoing,
    })),
    parallelGateway: parallelGateways.map((g) => ({
      id: g.id,
      incoming: g.incoming,
      outgoing: g.outgoing,
    })),
    startEvent: startEvents.map((e) => ({
      id: e.id,
      outgoing: e.outgoing,
    })),
    endEvent: endEvents.map((e) => ({
      id: e.id,
      incoming: e.incoming,
    })),
    sequenceFlow: sequenceFlows,
  };
  for (const key of ["task", "exclusiveGateway", "parallelGateway", "startEvent", "endEvent"])
    if (process[key] && process[key].length === 0) delete process[key];

  // Build <collaboration> with <participant> for each lane/participant
  const collaboration = {
    id: collabId,
    participant: participantObjs.length === 1 ? participantObjs[0] : participantObjs,
  };

  // Output only collaboration, process, and diagram, in that order
  const newDefinitions = {
    definitions: {
      collaboration,
      process
    },
  };

  return ensureBpmnHeader(builder.build(newDefinitions));
}

describe("convertChoreographyToProcess", () => {
  it("should convert all .bpmn files in data/sap-sam and write to data/sap-sam/proc", () => {
    const inputDir = path.join(__dirname, '../data/sap-sam/');
    const outputDir = path.join(inputDir, 'proc');
    if (!fs.existsSync(outputDir)) {
      fs.mkdirSync(outputDir, { recursive: true });
    }
    const files = fs.readdirSync(inputDir).filter(f => f.endsWith(".bpmn"));
    for (const file of files) {
      const inputPath = path.join(inputDir, file);
      const xmlInput = fs.readFileSync(inputPath, "utf-8");
      const converted = convertChoreographyToProcess(xmlInput);
      const outputWithHeader = ensureBpmnHeader(converted);
      const outputPath = path.join(outputDir, file.replace(/\.bpmn$/, ".proc.bpmn"));
      fs.writeFileSync(outputPath, outputWithHeader, "utf-8");
      expect(outputWithHeader).to.be.a("string").and.not.empty;
    }
  });
});

export { convertChoreographyToProcess };
