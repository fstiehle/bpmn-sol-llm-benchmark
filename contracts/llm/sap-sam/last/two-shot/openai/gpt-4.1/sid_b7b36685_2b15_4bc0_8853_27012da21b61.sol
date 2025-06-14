// test openai/gpt-4.1 - two-shot at 2025-06-12T02:02:46.661Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_b7b36685_2b15_4bc0_8853_27012da21b61 {
  uint public tokenState = 1;
  address[26] public participants;
  uint public conditions;
  constructor(address[26] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-F70D8A73-10FB-44F9-9331-D9AB914BFE28 interacted by homepage --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for interacted by homepage --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-F8BB6627-A6C1-4E25-BDF7-D7A978D2B2D5 login --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for login --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- sid-929FD353-B390-4631-820A-150410142285 give staff access --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for give staff access --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      // <--- sid-BFF58372-6AE9-4CC7-BDBF-E88E97950CF8 give normal access --->
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for give normal access --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-988EA705-FAE3-41B4-B9DF-E71DA7A1E317 manage employees --->
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for manage employees --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-2ECC1D34-1057-46B0-BF25-ABAAD55AFEFF manage users --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for manage users --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-055127F3-55F4-4144-AF6E-B9C6016A0441 check return car list --->
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for check return car list --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-7E766AF1-82D6-492C-9F5F-82E19BEA2E4B search car --->
      if (_tokenState & 1024 == 1024) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for search car --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-70E19713-D1EA-4E40-A6AA-3E0484338C20 recommend car --->
      if (_tokenState & 2048 == 2048) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for recommend car --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-F1FBD02F-9DDE-417E-B558-E15BD64B2ED6 access FAQ page --->
      if (_tokenState & 4096 == 4096) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for access FAQ page --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      // <--- sid-A399A183-B390-4276-94F5-128CA0FD2733 access contact us page and send issues --->
      if (_tokenState & 8192 == 8192) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for access contact us page and send issues --->
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-EF340667-79A9-4721-856B-A58CFCAC23E4 edit personal information --->
      if (_tokenState & 16384 == 16384) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for edit personal information --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      // <--- sid-08B2CDC1-2AA7-4DB6-B1D3-10AF5751E52A notify changes are updated --->
      if (_tokenState & 32768 == 32768) {
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for notify changes are updated --->
        _tokenState &= ~uint(32768);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- ExclusiveGateway sid-6CC279C7-42D2-4027-A86D-9B160AD17693 --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        // sequenceFlow sid-F1BD5B97-FDA3-43BB-AE12-D3EEC6E3A429: staff login
        if (!didTransition && (conditions & 1 == 1)) {
          // <--- auto transition to give staff access --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
          continue;
        }
        // sequenceFlow sid-CF34A7E3-4D5A-47ED-A311-84AF6FA21C5B: conditions & 1 == 1
        if (!didTransition) {
          // <--- default path to give normal access --->
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          didTransition = true;
          continue;
        }
      }
      // <--- EventBasedGateway sid-771ED2AA-3718-491D-A68D-C931063229EA --->
      if (_tokenState & 16 == 16) {
        // sequenceFlow sid-78AF86A4-162D-46C1-98DB-A5AEAE58DDF2
        _tokenState &= ~uint(16);
        _tokenState |= 128;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // sequenceFlow sid-F1A6EE0B-4E2F-4A1F-A673-021AB9544F2B
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 16 == 16) {
        // sequenceFlow sid-4A438536-9FFA-41B0-8AD4-908B3308BE6D
        _tokenState &= ~uint(16);
        _tokenState |= 512;
        continue;
      }
      // <--- EventBasedGateway sid-0F7B0F2A-347E-44F9-A210-B32B8CC2E0CB --->
      if (_tokenState & 64 == 64) {
        // sequenceFlow sid-89BE707D-5274-4689-8493-39BF44BF7006
        _tokenState &= ~uint(64);
        _tokenState |= 1024;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // sequenceFlow sid-39489E66-D56B-470B-B527-46DB1B78D5B8
        _tokenState &= ~uint(64);
        _tokenState |= 2048;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // sequenceFlow sid-E93EF25A-58A1-44EF-AFA7-EF093E6672D0
        _tokenState &= ~uint(64);
        _tokenState |= 4096;
        continue;
      }
      if (_tokenState & 64 == 64) {
        // sequenceFlow sid-C61A916F-D7D0-4E86-BBFB-2D99BC7CE210
        _tokenState &= ~uint(64);
        _tokenState |= 16384;
        continue;
      }
      // <--- auto transition from access FAQ page to access contact us page and send issues --->
      if (_tokenState & 8192 == 8192) {
        break;
      }
      // <--- auto transition from edit personal information to notify changes are updated --->
      if (_tokenState & 32768 == 32768) {
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
