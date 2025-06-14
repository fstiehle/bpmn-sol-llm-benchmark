// test openai/gpt-4.1 - two-shot at 2025-06-12T00:12:59.846Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_22d9bf83_763f_4e16_be84_3b1c3341f5eb {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-65C8117F_28E4_4E60_A856_DC3781741442 slanje problema --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom code for task here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-0E371D22_F671_46A9_B002_3BBC45D70D56 dobijanje detaljnog opisa problema --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // custom code for task here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // <--- sid-80DD8523_EED7_4D0E_AE73_B6DE5FEDAC6C slanje resenja --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
          // custom code for task here
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-31A1387F_6D25_4A18_B727_88BB8CA8A1B7 trazenje resenja --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // custom code for task here
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- sid-EA9BA447_3DAD_4A18_9CBF_2A3D55C0C7F3 slanje resenja --->
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[9]) {
          // custom code for task here
          _tokenState &= ~uint(32);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // <--- sid-081555FE_78D3_4DC0_B5BE_333FDEDE2BDC trazenje resenja --->
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // custom code for task here
          _tokenState &= ~uint(64);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-1DFCC98D-6E8D-44E7-B4FD-F9BCB6E13B2B --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // transition to trazenje resenja 4
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
        }
        if (!didTransition) {
          // default to slanje resenja 3
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue;
      }
      // <--- ExclusiveGateway sid-63F0C034-39FC-46B6-AABC-8BE558DB0EC9 --->
      if (_tokenState & 16 == 16) {
        bool didTransition = false;
        if (conditions & 2 == 2) {
          // transition to trazenje resenja 6
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          didTransition = true;
        }
        if (!didTransition) {
          // default to slanje resenja 5
          _tokenState &= ~uint(16);
          _tokenState |= 32;
        }
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
