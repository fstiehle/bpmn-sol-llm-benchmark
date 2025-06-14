// test openai/gpt-4.1 - one-shot at 2025-06-11T23:28:21.583Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_22d9bf83_763f_4e16_be84_3b1c3341f5eb {
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
      // sid-65C8117F-28E4-4E60-A856-DC3781741442 : taskID 1, "slanje_problema", initiator sid-CF510BFB-6E67-42F4-9729-7616A7D3345D (0)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-0E371D22-F671-46A9-B002-3BBC45D70D56 : taskID 2, "dobijanje_detaljnog_opisa_problema", initiator sid-758D42EA-916B-4103-8772-6BA5FD2616D2 (3)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid-80DD8523-EED7-4D0E-AE73-B6DE5FEDAC6C : taskID 3, "slanje_resenja", initiator sid-D2464DE4-EFF2-4F5E-BA93-EC6B51A37545 (5)
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }
      // sid-31A1387F-6D25-4A18-B727-88BB8CA8A1B7 : taskID 4, "trazenje_resenja", initiator sid-AB20C6C0-1CEA-4793-A1F4-AA172266C3BF (6)
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // sid-EA9BA447-3DAD-4A18-9CBF-2A3D55C0C7F3 : taskID 5, "slanje_resenja", initiator sid-C08B542A-57CC-459E-90FD-78A1FA6C3AB1 (9)
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[9]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // sid-081555FE-78D3-4DC0-B5BE-333FDEDE2BDC : taskID 6, "trazenje_resenja", initiator sid-2D416501-52C8-43AE-BE46-01C362253496 (10)
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }

      // Exclusive Gateway sid-1DFCC98D-6E8D-44E7-B4FD-F9BCB6E13B2B
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        // sid-DAEDCF5D-AF8D-44E1-82F2-60B84CB81855 : "da", to sid-80DD8523-EED7-4D0E-AE73-B6DE5FEDAC6C
        if (!didTransition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          didTransition = true;
          continue;
        }
        // sid-C4C60746-CCAC-4550-93B2-B0D74653C614 : "conditions & 1 == 1", to sid-31A1387F-6D25-4A18-B727-88BB8CA8A1B7
        if (!didTransition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 64;
          didTransition = true;
          continue;
        }
        // Default: sid-DAEDCF5D-AF8D-44E1-82F2-60B84CB81855
        if (!didTransition) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          continue;
        }
      }
      // Exclusive Gateway sid-63F0C034-39FC-46B6-AABC-8BE558DB0EC9
      if (_tokenState & 128 == 128) {
        bool didTransition = false;
        // sid-267AC130-63CC-4019-BC49-157A982F027B : "da", to sid-EA9BA447-3DAD-4A18-9CBF-2A3D55C0C7F3
        if (!didTransition && (conditions & 2 == 2)) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          didTransition = true;
          continue;
        }
        // sid-56248F22-864C-4ACD-B2E8-277E6CDB70E8 : "conditions & 2 == 2", to sid-081555FE-78D3-4DC0-B5BE-333FDEDE2BDC
        if (!didTransition && (conditions & 2 == 2)) {
          _tokenState &= ~uint(128);
          _tokenState |= 1024;
          didTransition = true;
          continue;
        }
        // Default: sid-267AC130-63CC-4019-BC49-157A982F027B
        if (!didTransition) {
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}