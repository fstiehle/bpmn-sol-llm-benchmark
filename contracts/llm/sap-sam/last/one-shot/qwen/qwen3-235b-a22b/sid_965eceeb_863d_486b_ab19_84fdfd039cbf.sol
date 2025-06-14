// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T03:10:09.640Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_965eceeb_863d_486b_ab19_84fdfd039cbf {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  constructor(address[10] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- StartEvent to Task1 --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue; 
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask_479EBA42 Ausleihbestellung beantragen --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask_3BDBEE51 Buechersendung uebergeben --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask_27248DE0 Ware abliefern --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask_F00A6239 Buechersendung zurueckschicken --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask_0E2CDEEA Ware abliefern --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
        break;
      }
      if (_tokenState & 64 == 64) {
        // <--- EndEvent --->
        _tokenState &= ~uint(64);
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}