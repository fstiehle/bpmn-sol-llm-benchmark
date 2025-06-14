// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T21:19:40.631Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_22d9bf83_763f_4e16_be84_3b1c3341f5eb {
  uint public tokenState = 1;
  address[11] public participants;
  uint public conditions;
  
  constructor(address[11] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // ChoreographyTask sid-65C8117F-28E4-4E60-A856-DC3781741442: slanje problema
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // ChoreographyTask sid-0E371D22-F671-46A9-B002-3BBC45D70D56: dobijanje detaljnog opisa problema
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway sid-1DFCC98D-6E8D-44E7-B4FD-F9BCB6E13B2B: operater zna da resi?
        if (conditions & 1 == 1) {
          // Condition satisfied: da
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // Follow default sequenceFlow: conditions & 1 == 1
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // ChoreographyTask sid-80DD8523-EED7-4D0E-AE73-B6DE5FEDAC6C: slanje resenja
        if (3 == id && msg.sender == participants[5]) {
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          id = 0;
          break; // End event
        }
      }
      
      if (_tokenState & 16 == 16) {
        // ChoreographyTask sid-31A1387F-6D25-4A18-B727-88BB8CA8A1B7: trazenje resenja
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 32 == 32) {
        // ExclusiveGateway sid-63F0C034-39FC-46B6-AABC-8BE558DB0EC9: podrska prvog nivoa zna da resi?
        if (conditions & 2 == 2) {
          // Condition satisfied: da
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // Follow default sequenceFlow: conditions & 2 == 2
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      
      if (_tokenState & 64 == 64) {
        // ChoreographyTask sid-EA9BA447-3DAD-4A18-9CBF-2A3D55C0C7F3: slanje resenja
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          id = 0;
          break; // End event
        }
      }
      
      if (_tokenState & 128 == 128) {
        // ChoreographyTask sid-081555FE-78D3-4DC0-B5BE-333FDEDE2BDC: trazenje resenja
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 256 == 256) {
        // Auto transition to sid-EA9BA447-3DAD-4A18-9CBF-2A3D55C0C7F3
        _tokenState &= ~uint(256);
        _tokenState |= 64;
        continue;
      }
      
      break;
    }
    tokenState = _tokenState;
  }
}
