// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:32:55.586Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
  uint public tokenState = 1;
  address[38] public participants;
  uint public conditions;
  mapping(uint => uint) public taskIDs;

  constructor(address[38] memory _participants) {
    participants = _participants;
    taskIDs[1] = 1;
    taskIDs[2] = 2;
    taskIDs[3] = 3;
    taskIDs[4] = 4;
    taskIDs[5] = 5;
    taskIDs[6] = 6;
    taskIDs[7] = 7;
    taskIDs[8] = 8;
    taskIDs[9] = 9;
    taskIDs[10] = 10;
    taskIDs[11] = 11;
    taskIDs[12] = 12;
    taskIDs[13] = 13;
    taskIDs[14] = 14;
    taskIDs[15] = 15;
    taskIDs[16] = 16;
    taskIDs[17] = 17;
    taskIDs[18] = 18;
    taskIDs[19] = 19;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D Order with requiered delivery date --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-87411925-6ACB-4399-9FDF-AB3A02B97185 Confirms order --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44 Confirms order with updated project date --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-79F7C5CA-0BB9-412D-82B7-243830F73242 Request payment details --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <---  auto transition  --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue; 
      }
      if (_tokenState & 128 == 128) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-B069E27A-D33B-46B4-93D2-8368A4696004 Send payment method --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-B6FC6638-517A-4341-8D5D-766673E6C7BC Request payment details --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74 Make payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-C711548A-C1DA-42C7-B342-7CE7FC79369C Receive payment method --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <---  auto transition  --->
        _tokenState &= ~uint(4096);
        _tokenState |= 16384;
        continue; 
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC Make payment --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <---  auto transition  --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        continue; 
      }
      if (_tokenState & 32768 == 32768) {
        // <--- sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1 Sends notification first batch --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <---  auto transition  --->
        _tokenState &= ~uint(65536);
        _tokenState |= 131072;
        continue; 
      }
      if (_tokenState & 131072 == 131072) {
        // <--- sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D Sends shipment --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(131072);
        _tokenState |= 262144;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 262144 == 262144) {
        // <---  auto transition  --->
        _tokenState &= ~uint(262144);
        _tokenState |= 524288;
        continue; 
      }
      if (_tokenState & 524288 == 524288) {
        // <--- sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0 Notification for the first batch of CPU shipment --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(524288);
        _tokenState |= 1048576;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1048576 == 1048576) {
        // <--- sid-36AEC271-211C-45AF-98E7-A36DCC243FE2 Sends shipment --->
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1048576);
        _tokenState |= 2097152;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2097152 == 2097152) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2097152);
          _tokenState |= 0;
          break; // is end
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2097152);
          _tokenState |= 4194304;
          continue; 
        }
      }
      if (_tokenState & 4194304 == 4194304) {
        // <--- sid-05B03332-15F8-4230-9323-5EB426F59D83 Makes reclamation --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 8388608;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8388608 == 8388608) {
        if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(8388608);
          _tokenState |= 16777216;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(8388608);
          _tokenState |= 33554432;
          continue; 
        }
      }
      if (_tokenState & 16777216 == 16777216) {
        // <--- sid-76B84570-72AA-46A3-B8CC-E05210FBA769 Announces problems with the materials --->
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16777216);
        _tokenState |= 67108864;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 33554432 == 33554432) {
        // <--- sid-8224411A-EC96-46EA-9628-AC493844BADA Announces problems with the CPUs --->
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(33554432);
        _tokenState |= 134217728;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 67108864 == 67108864) {
        // <--- sid-AA70870B-9C86-4611-881F-538762AEDBBF Sends reclamation --->
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(67108864);
        _tokenState |= 268435456;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 134217728 == 134217728) {
        // <---  auto transition  --->
        _tokenState &= ~uint(134217728);
        _tokenState |= 268435456;
        continue; 
      }
      if (_tokenState & 268435456 == 268435456) {
        // <--- sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B Sends the result from the parts check --->
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(268435456);
        _tokenState |= 536870912;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 536870912 == 536870912) {
        // <---  auto transition  --->
        _tokenState &= ~uint(536870912);
        _tokenState |= 1073741824;
        continue; 
      }
      if (_tokenState & 1073741824 == 1073741824) {
        // <--- sid-61585682-6A88-4404-A770-8142C2B15ACC Sends the results from the diagnostics --->
        if (19 == id && msg.sender == participants[36]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1073741824);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
