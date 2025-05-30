// Created by qwen3-14b at 2025-05-30T15:33:15.474Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract LLM_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setconditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask_EC58EE38-642E-435C-BD7C-5961E5EA7190 Klijent ima problem --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_CE66FED6-A686-4096-B422-CD0BA169BE36 Dobijanje opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 4 == 4) {
        // <--- ExclusiveGateway_15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14 --->
        if (_tokenState & 8 == 8) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else if (_tokenState & 16 == 16) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_13670263-52E5-49D8-9F4B-0558669622F0 Pitanje podrske I nivoa --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 32 == 32) {
        // <--- ExclusiveGateway_48B3C288-CF4E-4668-90E9-C6639F07A32F --->
        if (_tokenState & 64 == 64) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else if (_tokenState & 128 == 128) {
          // <---  auto transition  --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }

      if (_tokenState & 64 == 64) {
        // <--- ChoreographyTask_D4B484C1-78F8-4D81-957D-2DAF07E48494 Slanje resenja --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      if (_tokenState & 128 == 128) {
        // <--- ChoreographyTask_1E0251F9-E26D-4B9D-BD82-825425624E08 Saopstavanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }

      if (_tokenState & 128 == 128) {
        // <--- EndEvent_DCD1B6C5-34E2-46DC-A75F-06EC79B7A246 --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break;
      }

      break;
    }

    tokenState = _tokenState;
  }
}