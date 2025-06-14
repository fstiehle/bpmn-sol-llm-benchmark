// test openai/gpt-4.1 - one-shot at 2025-06-11T23:38:41.853Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_49750b77_ac60_4753_9546_7a2f420eb466 {
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
      // ChoreographyTask: saopstavanje_problema (sid-ADE2BBE3-1E47-4634-867B-5FCC470C7C42), taskID: 1, initiator: participants[0]
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // Custom code for saopstavanje_problema
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: dobijanje_opisa_problema (sid-BC1B9586-C693-42A6-9707-0E2713E56C27), taskID: 2, initiator: participants[3]
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          // Custom code for dobijanje_opisa_problema
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-9994DED5_787E_4BE2_AABA_D34534B31509, token bit 4
      if (_tokenState & 4 == 4) {
        bool hasMatched = false;
        // SequenceFlow sid-46E63A5C-BB56-45F5-A58F-8DBAB44CCCAC: if (conditions & 1 == 1) -> sid-56157FE2_7AE7_4366_BFCB_D21399AEDD57 (bit 4096)
        if (!hasMatched && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 4096;
          hasMatched = true;
        }
        // SequenceFlow sid-63AF4A8F-B6D3-4444-9DC0-3F88A65C1D73: default, to sid-2B0045D9_D674_4EEE_BC16_D6EFE522F432 (bit 32)
        if (!hasMatched) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
        }
        continue;
      }
      // ChoreographyTask: konsultovanje_o_problemu (sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432), taskID: 4, initiator: participants[6]
      if (_tokenState & 32 == 32) {
        if (id == 4 && msg.sender == participants[6]) {
          // Custom code for konsultovanje_o_problemu
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-6ED7CC8A_7A9D_4CED_8883_81491F7B549B, token bit 64
      if (_tokenState & 64 == 64) {
        bool hasMatched = false;
        // SequenceFlow sid-07083626-B2A5-403E-A911-D82EBCE5B342: if (conditions & 2 == 2) -> sid-7758ED5E_3E5A_487A_82AB_910661B1A9BE (bit 512)
        if (!hasMatched && (conditions & 2 == 2)) {
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          hasMatched = true;
        }
        // SequenceFlow sid-3EB6D28C-5181-45E3-AFC3-2476DD64EFC1: default, to sid-31F0A68E_0C14_4B89_8AB3_A1C46B586611 (bit 128)
        if (!hasMatched) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
        }
        continue;
      }
      // ChoreographyTask: prosledjivanje_problema_podrsci_2_nivoa (sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611), taskID: 5, initiator: participants[8]
      if (_tokenState & 128 == 128) {
        if (id == 5 && msg.sender == participants[8]) {
          // Custom code for prosledjivanje_problema_podrsci_2_nivoa
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: objasnjavanje_resenja (sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7), taskID: 6, initiator: participants[11]
      if (_tokenState & 256 == 256) {
        if (id == 6 && msg.sender == participants[11]) {
          // Custom code for objasnjavanje_resenja
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-7758ED5E_3E5A_487A_82AB_910661B1A9BE, token bit 512 (join)
      // Joins from: sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 (bit 256), and condition (bit 64, sid-6ED7CC8A_7A9D_4CED_8883_81491F7B549B)
      if (_tokenState & 512 == 512) {
        // This join is reached either via sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 (bit 256) or via the gateway (bit 64) with condition.
        // For correct join, we must detect both (i.e., sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7 and the gateway path).
        // But since our transitions always reach here by consuming the previous, we can simply move forward.
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      // ChoreographyTask: vracanje_resenja (sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965), taskID: 7, initiator: participants[13]
      if (_tokenState & 1024 == 1024) {
        if (id == 7 && msg.sender == participants[13]) {
          // Custom code for vracanje_resenja
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-56157FE2_7AE7_4366_BFCB_D21399AEDD57, token bit 4096 (join)
      // Joins from: sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28 (bit 2048), or sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965 (bit 1024), or via gateway
      if (_tokenState & 4096 == 4096) {
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue;
      }
      // ChoreographyTask: saopstavanje_resenja (sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28), taskID: 3, initiator: participants[5]
      if (_tokenState & 8192 == 8192) {
        if (id == 3 && msg.sender == participants[5]) {
          // Custom code for saopstavanje_resenja
          _tokenState &= ~uint(8192);
          // End event reached
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}