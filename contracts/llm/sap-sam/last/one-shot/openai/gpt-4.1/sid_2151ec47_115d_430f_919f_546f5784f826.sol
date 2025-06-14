// test openai/gpt-4.1 - one-shot at 2025-06-11T23:27:33.060Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_2151ec47_115d_430f_919f_546f5784f826 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-EC58EE38-642E-435C-BD7C-5961E5EA7190: Klijent ima problem
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for Klijent ima problem --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-CE66FED6-A686-4096-B422-CD0BA169BE36: Dobijanje opisa problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for Dobijanje opisa problema --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-1E0251F9-E26D-4B9D-BD82-825425624E08: Saopstavanje resenja
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for Saopstavanje resenja --->
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break;
        }
      }
      // sid-13670263-52E5-49D8-9F4B-0558669622F0: Pitanje podrske I nivoa
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Pitanje podrske I nivoa --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494: Slanje resenja
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for Slanje resenja --->
          _tokenState &= ~uint(256);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // sid-6D099124-B421-417F-862D-8C820BA41D08: Pitanje za II nivo
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for Pitanje za II nivo --->
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4:
      if (_tokenState & 8192 == 8192) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for  --->
          _tokenState &= ~uint(8192);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway sid-15C3EEC7_4E35_4B6A_B7CC_8C2FB95ABC14
      if (_tokenState & 4 == 4) {
        bool transition = false;
        if (conditions & 1 == 1) {
          // zna da resi
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transition = true;
        }
        if (!transition) {
          // default: conditions & 1 != 1
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          transition = true;
        }
        if (transition) continue;
      }
      // ExclusiveGateway sid-48B3C288_CF4E_4668_90E9_C6639F07A32F
      if (_tokenState & 64 == 64) {
        bool transition = false;
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 1024;
          transition = true;
        }
        if (!transition) {
          // default: zna da resi
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          transition = true;
        }
        if (transition) continue;
      }
      // ParallelGateway (Join) before sid-1E0251F9-E26D-4B9D-BD82-825425624E08: from 16 and 256
      if ((_tokenState & (16|256)) == (16|256)) {
        _tokenState &= ~uint(256);
        // tokenState for sid-1E0251F9-E26D-4B9D-BD82-825425624E08 is already 16, so just clear 256
        continue;
      }
      // ParallelGateway (Join) before sid-D4B484C1-78F8-4D81-957D-2DAF07E48494: from 256 and 8192
      if ((_tokenState & (256|8192)) == (256|8192)) {
        _tokenState &= ~uint(8192);
        // tokenState for sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 is already 256, so just clear 8192
        continue;
      }
      // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494: re-activation from sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 and previous path
      // ParallelGateway (Split) after sid-13670263-52E5-49D8-9F4B-0558669622F0: handled by enabling 64 or 1024
      // ParallelGateway (Split) after sid-6D099124-B421-417F-862D-8C820BA41D08: handled by enabling 2048
      // ParallelGateway (Split) after sid-CE66FED6-A686-4096-B422-CD0BA169BE36: handled by enabling 4
      // sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4: after sid-6D099124-B421-417F-862D-8C820BA41D08
      // After sid-6D099124-B421-417F-862D-8A15-DDE5DF91F5D4, activate 8192
      if (_tokenState & 2048 == 2048) {
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
