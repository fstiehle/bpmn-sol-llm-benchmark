// test openai/gpt-4.1 - one-shot at 2025-06-11T23:35:38.936Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_37477dbd_0017_4f9c_9f93_3441f05e35e0 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-6F49A10A-9F81-4E12-A271-A6014D43428B: slanje_opisa_problema (taskID 1, participant 0)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- slanje_opisa_problema --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid-0F1C9106-5B3F-4DE4-A575-F5210663165F: dobijanje_detaljnog_opisa_problema (taskID 2, participant 3)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- dobijanje_detaljnog_opisa_problema --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway sid-8AB97A5D_F1EB_476F_9EE5_9A126E191C7A (bit 4)
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // <--- sid-CC78063B-62AD-410E-ADEA-DE528903FDDA conditions & 1 == 1 --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transitioned = true;
        }
        if (!transitioned) {
          // <--- sid-955F34B5-2DD6-4909-871A-D7AFBA5BC177 default --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      // sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4: slanje_resenja (taskID 3, participant 5)
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
          // <--- slanje_resenja --->
          _tokenState &= ~uint(8);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // sid-AD18DEB2-3CA2-4736-BBD1-884125893D49: slanje_opisa_problema (taskID 4, participant 6)
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- slanje_opisa_problema --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Exclusive Gateway sid-451230A1_DC10_4A56_AC3B_F2E67D46DDAE (bit 32)
      if (_tokenState & 32 == 32) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // <--- sid-56FC3AA2-3E44-4ABD-9399-CB754D0B9269 conditions & 2 == 2 --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          transitioned = true;
        }
        if (!transitioned) {
          // <--- sid-CED7D7C1-6279-4E65-B62C-5CDF43D10E2B default --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          transitioned = true;
        }
        if (transitioned) continue;
      }
      // sid-D1239A49-2E49-4621-9FD3-E699393B9961: slanje_opisa_problema (taskID 6, participant 10)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- slanje_opisa_problema --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid-661CD640-1BBE-4CA7-A659-6B26B74E592B: slanje_resenja (taskID 5, participant 8)
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- slanje_resenja --->
          _tokenState &= ~uint(128);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F: slanje_resenja (taskID 7, participant 13)
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[13]) {
          // <--- slanje_resenja --->
          _tokenState &= ~uint(256);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // End Event: sid-0FB3CFC3-C1D8-49D8-9726-9299CF202E09 (bit 512)
      if (_tokenState & 512 == 512) {
        // <--- process end --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
