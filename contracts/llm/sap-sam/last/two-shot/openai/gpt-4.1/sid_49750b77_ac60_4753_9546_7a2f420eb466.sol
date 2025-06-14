// test openai/gpt-4.1 - two-shot at 2025-06-12T01:00:27.527Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_49750b77_ac60_4753_9546_7a2f420eb466 {
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
    while (_tokenState != 0) {
      // sid-ADE2BBE3-1E47-4634-867B-5FCC470C7C42 saopstavanje_problema (taskID 1, initiator 0)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- saopstavanje_problema --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-BC1B9586-C693-42A6-9707-0E2713E56C27 dobijanje_opisa_problema (taskID 2, initiator 3)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- dobijanje_opisa_problema --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Gateway sid-9994DED5-787E-4BE2-AABA-D34534B31509 (exclusive, diverging)
      if (_tokenState & 4 == 4) {
        // conditions & 1 == 1 -> sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 512;
          continue;
        }
        // conditions & 2 == 2 -> sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          continue;
        }
        // default: sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue;
      }
      // sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432 konsultovanje_o_problemu (taskID 4, initiator 6)
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- konsultovanje_o_problemu --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // Gateway sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B (exclusive, diverging)
      if (_tokenState & 16 == 16) {
        // conditions & 2 == 2 -> sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16);
          _tokenState |= 128;
          continue;
        }
        // default: sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }
      // sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611 prosledjivanje_problema_podrsci_2_nivoa (taskID 5, initiator 8)
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- prosledjivanje_problema_podrsci_2_nivoa --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 objasnjavanje_resenja (taskID 6, initiator 11)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[11]) {
          // <--- objasnjavanje_resenja --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Gateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE (exclusive, converging)
      if (_tokenState & 128 == 128) {
        // This is a join: input from sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 and sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B
        // But since both transitions set 128 and no split, just auto transition to sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      // sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965 vracanje_resenja (taskID 7, initiator 13)
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- vracanje_resenja --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // Gateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57 (exclusive, converging)
      if (_tokenState & 512 == 512) {
        // auto transition to sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      // sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28 saopstavanje_resenja (taskID 3, initiator 5)
      if (_tokenState & 1024 == 1024) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- saopstavanje_resenja --->
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
