// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:44:30.379Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
  uint public tokenState = 1;
  address[19] public participants;
  uint public conditions;
  mapping(uint => uint) public taskToId;
  
  constructor(address[19] memory _participants) {
    participants = _participants;
    taskToId[1] = 1;
    taskToId[2] = 2;
    taskToId[3] = 3;
    taskToId[4] = 4;
    taskToId[5] = 5;
    taskToId[6] = 6;
    taskToId[7] = 7;
    taskToId[8] = 8;
    taskToId[9] = 9;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-17139AC8-7F6D-400E-AFDA-3B754E66F776 Überweisung tätigen --->
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
        } else if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-1FB6E2A1-8320-4851-B504-8CA4B7AF1ED0 Zahlungseingang bestätigen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-6840A80E-8EE7-4A49-9CFE-607B2EED5E87 Überschuss zurückzahlen --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-75BCEE37-9CDA-41D8-B345-83417545D41F Nachhzahlungsaufforderung schicken --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 1;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-33A7C015-D6BD-4CA4-AD1A-6C1A7BD4E27C --->
        // <--- parallel gateway --->
        // <--- auto transition  --->
        _tokenState &= ~uint(32);
        _tokenState |= 64 | 128;
        continue; 
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-13151680-B8EB-4564-B218-B73084FC75E5 Transportkosten bezahlen --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-5CFB3FE9-33BB-4E8D-91F5-FB684E3F49BC Ware an Logistik-Unternehmen übergeben --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-FDB6B8B7-8C1C-456A-B335-DDB19C1DEB84 --->
        // <--- parallel gateway --->
        // <--- auto transition  --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue; 
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-F731B3E3-C364-47B2-85EE-F14FE149D7B1 Ware liefern --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-5FD69B90-2FAE-4AF1-A36E-3C5F70447C40 Wareneingang bestätigen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-0C00E59F-E01E-45F3-A8DD-E10A61D2884F Überweisung an den Verkäufer tätigen --->
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
