// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T12:46:47.589Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_37477dbd_0017_4f9c_9f93_3441f05e35e0 {
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6F49A10A-9F81-4E12-A271-A6014D43428B slanje opisa problema --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0F1C9106-5B3F-4DE4-A575-F5210663165F dobijanje detaljnog opisa problema --->
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <--- sid-8AB97A5D-F1EB-476F-9EE5-9A126E191C7A operater zna da resi? --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        } else {
          // <--- sid-8AB97A5D-F1EB-476F-9EE5-9A126E191C7A operater zna da resi? --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4 slanje resenja --->
        if (3 == id && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-AD18DEB2-3CA2-4736-BBD1-884125893D49 slanje opisa problema --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <--- sid-451230A1-DC10-4A56-AC3B-F2E67D46DDAE podrska I nivoa zna da resi? --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        } else {
          // <--- sid-451230A1-DC10-4A56-AC3B-F2E67D46DDAE podrska I nivoa zna da resi? --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-661CD640-1BBE-4CA7-A659-6B26B74E592B slanje resenja --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-D1239A49-2E49-4621-9FD3-E699393B9961 slanje opisa problema --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F slanje resenja --->
        if (7 == id && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
