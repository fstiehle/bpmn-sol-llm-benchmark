// test GPT 4.1 - One Shot with easier example at 2025-06-02T19:31:46.896Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_easier_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  // taskID mapping:
  // 0: sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 (Klijent ima problem, initiator: participants[0])
  // 1: sid-CE66FED6-A686-4096-B422-CD0BA169BE36 (Dobijanje opisa problema, initiator: participants[3])
  // 2: sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (Saopstavanje resenja, initiator: participants[5])
  // 3: sid-13670263-52E5-49D8-9F4B-0558669622F0 (Pitanje podrske I nivoa, initiator: participants[6])
  // 4: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (Slanje resenja, initiator: participants[9])
  // 5: sid-6D099124-B421-417F-862D-8C820BA41D08 (Pitanje za II nivo, initiator: participants[10])
  // 6: sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (unnamed, initiator: participants[13])

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      // Start Event -> sid-EC58EE38-642E-435C-BD7C-5961E5EA7190
      if (_tokenState & 1 == 1) {
        // <--- sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 Klijent ima problem --->
        if (id == 0 && msg.sender == participants[0]) {
          // task logic here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      // sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 -> sid-CE66FED6-A686-4096-B422-CD0BA169BE36
      if (_tokenState & 2 == 2) {
        // <--- sid-CE66FED6-A686-4096-B422-CD0BA169BE36 Dobijanje opisa problema --->
        if (id == 1 && msg.sender == participants[3]) {
          // task logic here
          _tokenState &= ~uint(2);
          // Now, exclusive gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14
          // two branches:
          // zna da resi: sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (default)
          // ne zna da resi: sid-13670263-52E5-49F0-9584-D53B9ED172D7 (if conditions & 1 == 1)
          if (conditions & 1 == 1) {
            // take conditional branch to sid-13670263-52E5-49D8-9F4B-0558669622F0
            _tokenState |= 8;
          } else {
            // default branch to sid-1E0251F9-E26D-4B9D-BD82-825425624E08
            _tokenState |= 4;
          }
          continue;
        }
      }
      // sid-CE66FED6-A686-4096-B422-CD0BA169BE36 -> exclusiveGateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14
      // sid-1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja (initiatingParticipant: participants[5])
      if (_tokenState & 4 == 4) {
        // <--- sid-1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
        if (id == 2 && msg.sender == participants[5]) {
          // task logic here
          _tokenState &= ~uint(4);
          // End event
          _tokenState = 0;
          break;
        }
      }
      // sid-13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa (initiatingParticipant: participants[6])
      if (_tokenState & 8 == 8) {
        // <--- sid-13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa --->
        if (id == 3 && msg.sender == participants[6]) {
          // task logic here
          _tokenState &= ~uint(8);
          // Now, exclusive gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F
          // zna da resi: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (default)
          // ne zna da resi: sid-6D099124-B421-417F-862D-8C820BA41D08 (if conditions & 1 == 1)
          if (conditions & 1 == 1) {
            // take conditional branch to sid-6D099124-B421-417F-862D-8C820BA41D08
            _tokenState |= 32;
          } else {
            // default branch to sid-D4B484C1-78F8-4D81-957D-2DAF07E48494
            _tokenState |= 16;
          }
          continue;
        }
      }
      // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja (initiatingParticipant: participants[9])
      if (_tokenState & 16 == 16) {
        // <--- sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja --->
        if (id == 4 && msg.sender == participants[9]) {
          // task logic here
          _tokenState &= ~uint(16);
          // next: sid-1E0251F9-E26D-4B9D-BD82-825425624E08
          _tokenState |= 4;
          continue;
        }
      }
      // sid-6D099124-B421-417F-862D-8C820BA41D08 Pitanje za II nivo (initiatingParticipant: participants[10])
      if (_tokenState & 32 == 32) {
        // <--- sid-6D099124-B421-417F-862D-8C820BA41D08 Pitanje za II nivo --->
        if (id == 5 && msg.sender == participants[10]) {
          // task logic here
          _tokenState &= ~uint(32);
          // next: sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4
          _tokenState |= 64;
          continue;
        }
      }
      // sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (initiatingParticipant: participants[13])
      if (_tokenState & 64 == 64) {
        // <--- sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (unnamed) --->
        if (id == 6 && msg.sender == participants[13]) {
          // task logic here
          _tokenState &= ~uint(64);
          // next: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494
          _tokenState |= 16;
          continue;
        }
      }
      break;
    }

    tokenState = _tokenState;
  }
}