// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:23:34.152Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
  uint public tokenState = 1;
  address[38] public participants;
  uint public conditions;
  constructor(address[38] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D Order with required delivery date --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-87411925-6ACB-4399-9FDF-AB3A02B97185 Confirms order --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44 Confirms order with updated project date --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-79F7C5CA-0BB9-412D-82B7-243830F73242 Request payment details --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-B069E27A-D33B-46B4-93D2-8368A4696004 Send payment method --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-B6FC6638-517A-4341-8D5D-766673E6C7BC Request payment details --->
        if (6 == id && msg.sender == participants[11]) {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74 Make payment --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- sid-C711548A-C1DA-42C7-B342-7CE7FC79369C Receive payment method --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(16384);
          _tokenState |= 32768;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC Make payment --->
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(65536);
          _tokenState |= 131072;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 262144 == 262144) {
        // <--- sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1 Sends notification first batch --->
        if (10 == id && msg.sender == participants[18]) {
          _tokenState &= ~uint(262144);
          _tokenState |= 524288;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1048576 == 1048576) {
        // <--- sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D Sends shipment --->
        if (11 == id && msg.sender == participants[20]) {
          _tokenState &= ~uint(1048576);
          _tokenState |= 2097152;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4194304 == 4194304) {
        // <--- sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0 Notification for the first batch of CPU shipment --->
        if (12 == id && msg.sender == participants[22]) {
          _tokenState &= ~uint(4194304);
          _tokenState |= 8388608;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16777216 == 16777216) {
        // <--- sid-36AEC271-211C-45AF-98E7-A36DCC243FE2 Sends shipment --->
        if (13 == id && msg.sender == participants[24]) {
          _tokenState &= ~uint(16777216);
          _tokenState |= 33554432;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 67108864 == 67108864) {
        // <--- sid-05B03332-15F8-4230-9323-5EB426F59D83 Makes reclamation --->
        if (14 == id && msg.sender == participants[26]) {
          _tokenState &= ~uint(67108864);
          _tokenState |= 134217728;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 268435456 == 268435456) {
        // <--- sid-76B84570-72AA-46A3-B8CC-E05210FBA769 Announces problems with the materials --->
        if (15 == id && msg.sender == participants[28]) {
          _tokenState &= ~uint(268435456);
          _tokenState |= 536870912;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 1073741824 == 1073741824) {
        // <--- sid-8224411A-EC96-46EA-9628-AC493844BADA Announces problems with the CPUs --->
        if (16 == id && msg.sender == participants[30]) {
          _tokenState &= ~uint(1073741824);
          _tokenState |= 2147483648;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4294967296 == 4294967296) {
        // <--- sid-AA70870B-9C86-4611-881F-538762AEDBBF Sends reclamation --->
        if (17 == id && msg.sender == participants[32]) {
          _tokenState &= ~uint(4294967296);
          _tokenState |= 8589934592;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 17179869184 == 17179869184) {
        // <--- sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B Sends the result from the parts check --->
        if (18 == id && msg.sender == participants[34]) {
          _tokenState &= ~uint(17179869184);
          _tokenState |= 34359738368;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 68719476736 == 68719476736) {
        // <--- sid-61585682-6A88-4404-A770-8142C2B15ACC Sends the results from the diagnostics --->
        if (19 == id && msg.sender == participants[36]) {
          _tokenState &= ~uint(68719476736);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- Parallel Gateway sid-8A856537-7AC4-4586-BC1A-66678EC8B506 Diverging --->
        _tokenState &= ~uint(2);
        _tokenState |= 20; // Activate both outgoing paths (4 + 16)
        continue;
      }
      if (_tokenState & 40 == 40) {
        // <--- Parallel Gateway sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3 Converging --->
        _tokenState &= ~uint(40);
        _tokenState |= 64;
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- Parallel Gateway sid-C8749F03-EA4F-4134-A956-99029BA412C0 Diverging --->
        _tokenState &= ~uint(128);
        _tokenState |= 1280; // Activate both outgoing paths (256 + 1024)
        continue;
      }
      if (_tokenState & 147456 == 147456) {
        // <--- Parallel Gateway sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3 Converging --->
        _tokenState &= ~uint(147456);
        _tokenState |= 2621440; // Activate next path (262144 + 1048576)
        continue;
      }
      if (_tokenState & 2621440 == 2621440) {
        // <--- Parallel Gateway sid-49433071-9A98-4150-BCC9-19A518103FFC Diverging --->
        _tokenState &= ~uint(2621440);
        _tokenState |= 1310720; // Activate both outgoing paths (262144 + 1048576)
        continue;
      }
      if (_tokenState & 2621440 == 2621440) {
        // <--- Parallel Gateway sid-59FD9696-33BA-4281-B983-16C678D60C29 Converging --->
        _tokenState &= ~uint(2621440);
        _tokenState |= 4194304;
        continue;
      }
      if (_tokenState & 33554432 == 33554432) {
        // <--- Exclusive Gateway sid-6F6BBE1D-EDBA-459B-9FF8-096332A86F9D Diverging --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(33554432);
          _tokenState |= 0; // End state
          break;
        } else {
          _tokenState &= ~uint(33554432);
          _tokenState |= 67108864; // Default path
          continue;
        }
      }
      if (_tokenState & 134217728 == 134217728) {
        // <--- Exclusive Gateway sid-F5E250E9-8224-4C08-96CC-5B213FE8E878 Diverging --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(134217728);
          _tokenState |= 1073741824;
          continue;
        } else {
          _tokenState &= ~uint(134217728);
          _tokenState |= 268435456; // Default path
          continue;
        }
      }
      if (_tokenState & 23622320128 == 23622320128) {
        // <--- Exclusive Gateway sid-7D650B82-5367-4CA4-B00C-EECE35C1BEDD Converging --->
        _tokenState &= ~uint(23622320128);
        _tokenState |= 68719476736;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}