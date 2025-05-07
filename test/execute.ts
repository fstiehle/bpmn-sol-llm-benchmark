import fs from 'fs';
import path from 'path';
import { assert, expect } from "chai";
import chorpiler, { TriggerEncoding } from "chorpiler";
import { ethers } from "hardhat";

describe("Simulator", () => {

  const sim = new chorpiler.utils.Simulator(); 
  const xesParser = new chorpiler.utils.XESParser();
  sim.bpmnDir = "./data"
  sim.contractDir = "./contracts/chorpiler"
  sim.xesDir = "./xes" 

  before(async () => {
    return sim.generate();
  });

  describe("Chorpiler", () => {

    const solFiles = fs.readdirSync(sim.contractDir).filter(file => file.endsWith('.sol'));

      it(`Replay traces`, async () => {

        for (const file of solFiles) {
          const name = path.basename(file, '.sol');

          console.log("\t", "Simulate:", name);
          const eventLog = await xesParser.fromXML(
            fs.readFileSync(path.join(sim.xesDir, name + '.xes'))
          );

          const triggerEncodingData = JSON.parse(fs.readFileSync(path.join(sim.contractDir, name + '.json'), 'utf-8'));
          const triggerEncoding = TriggerEncoding.fromJSON(triggerEncodingData);

          const wallets = 
            (await ethers.getSigners())
              .slice(0, triggerEncoding.participants.size);

          // replay log
          for (const [i, trace] of eventLog.traces.entries()) {

            // deploy
            const contract = await ethers.deployContract(
              name, [[...wallets.values()].map(v => v.address)]);
  
            const contracts = new Map<string, any>();
            for (const [id, num] of triggerEncoding.participants) {
              contracts.set(id, contract.connect(wallets[num]));
            }

            console.log("\t", "Replay Conforming Trace:", i);
            for (const event of trace) {

              if (event.dataChange && event.dataChange.length > 0) {
                for (const el of event.dataChange) {
                  const preConditionState = await contract.conditions();
                  const methodName = "set" + el.variable;
                  if (typeof contract[methodName] === "function") {
                    const updatedState = Number(preConditionState) | Number(el.val);
                    await (await contract[methodName](updatedState)).wait(1);
                    console.debug("\t\t", 'Try:', "SetCondition", updatedState);
                    //console.debug(Number(await contract.conditions()));
                  } else {
                    throw new Error(`Method ${methodName} does not exist on the contract`);
                  }
                }
                continue;
              }

              const participant = contracts.get(event.source);
              const taskID = triggerEncoding.tasks.get(event.id);
              assert(participant && taskID, `source (participant) '${event.source}' for event '${event.name}' not found`);
              //console.debug("\t\t", `source '${event.source}' event '${event.name}'`)
    
              const preTokenState = await contract.tokenState();
              console.debug("\t\t", 'Try:', 'TaskID:', taskID, `"${event.name}"`);
              await (await participant.enact(taskID)).wait(1);
              const postTokenState = await contract.tokenState();
              //console.debug("\t\t", postTokenState)

              // Expect that tokenState has changed!
              expect(postTokenState).to.not.equal(preTokenState);

            }
            expect(
              await contract.tokenState(),
              "End of process not reached!"
            ).to.equal(0);
          }
        }
      });

  });
});