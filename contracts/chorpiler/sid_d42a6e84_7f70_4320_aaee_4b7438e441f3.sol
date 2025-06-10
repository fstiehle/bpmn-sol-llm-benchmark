//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_d42a6e84_7f70_4320_aaee_4b7438e441f3 {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;

  constructor(address[36] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D Send order with required delivery date and insurance decision --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 6;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-87411925-6ACB-4399-9FDF-AB3A02B97185 Confirms order --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44 Confirms order with updated project date --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 40 == 40) {
        // <--- sid-79F7C5CA-0BB9-412D-82B7-243830F73242 Request payment details --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(40);
        _tokenState |= 192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-B069E27A-D33B-46B4-93D2-8368A4696004 Send payment method and the extra price for the insurance --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-B6FC6638-517A-4341-8D5D-766673E6C7BC Request payment details --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74 Make payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-C711548A-C1DA-42C7-B342-7CE7FC79369C Receive payment method --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC Make payment --->
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 5120 == 5120) {
        // <--- sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D Sends shipment --->
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(5120);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16384 == 16384) {
        // <--- sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0 Notification for the first batch of CPU shipment --->
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32768 == 32768) {
        // <--- sid-36AEC271-211C-45AF-98E7-A36DCC243FE2 Sends shipment --->
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(65536);
          _tokenState |= 0;
          break; // is end
        }
        else {
          // <--- sid-05B03332-15F8-4230-9323-5EB426F59D83 Makes reclamation --->
          if (13 == id && msg.sender == participants[24]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(65536);
          _tokenState |= 131072;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 131072 == 131072) {
        // <--- sid-61585682-6A88-4404-A770-8142C2B15ACC Sends the components to the assembler --->
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(131072);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-980B0836-B68F-4798-B204-3BC4092AE4C8 Sends order --->
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 262144;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 262144 == 262144) {
        // <--- sid-11DDF354-621C-4830-9B88-FFA519FC08C5 Confirms order --->
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        if (conditions & 2 == 2) {
          // <--- sid-92FDB176-7B0D-4C1A-8F8A-089E8CDEE09D Send message materials pass the standards --->
          if (18 == id && msg.sender == participants[34]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          id = 0;
          continue; 
          }
        }
        else {
          // <--- sid-A3B7931B-2C35-4C44-B1B3-E51CADAB6EFB Send the materials back to the supplier --->
          if (17 == id && msg.sender == participants[32]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          id = 0;
          continue; 
          }
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}