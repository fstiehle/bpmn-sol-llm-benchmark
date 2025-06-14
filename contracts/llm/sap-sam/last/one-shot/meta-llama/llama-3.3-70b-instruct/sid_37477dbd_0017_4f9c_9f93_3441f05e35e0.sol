// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:21:19.678Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_37477dbd_0017_4f9c_9f93_3441f05e35e0 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  mapping(uint => uint) public taskIDtoIndex;

  constructor(address[14] memory _participants) {
    participants = _participants;
    taskIDtoIndex[1] = 0; // sid-6F49A10A-9F81-4E12-A271-A6014D43428B
    taskIDtoIndex[2] = 1; // sid-0F1C9106-5B3F-4DE4-A575-F5210663165F
    taskIDtoIndex[3] = 2; // sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4
    taskIDtoIndex[4] = 3; // sid-AD18DEB2-3CA2-4736-BBD1-884125893D49
    taskIDtoIndex[5] = 4; // sid-661CD640-1BBE-4CA7-A659-6B26B74E592B
    taskIDtoIndex[6] = 5; // sid-D1239A49-2E49-4621-9FD3-E699393B9961
    taskIDtoIndex[7] = 6; // sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-6F49A10A-9F81-4E12-A271-A6014D43428B slanje opisa problema --->
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-0F1C9106-5B3F-4DE4-A575-F5210663165F dobijanje detaljnog opisa problema --->
        if (id == 2 && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4 slanje resenja --->
        if (id == 3 && msg.sender == participants[5]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-AD18DEB2-3CA2-4736-BBD1-884125893D49 slanje opisa problema --->
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          continue; 
        } else if (conditions & 2 == 2) {
          // <---  auto transition  --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-661CD640-1BBE-4CA7-A659-6B26B74E592B slanje resenja --->
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-D1239A49-2E49-4621-9FD3-E699393B9961 slanje opisa problema --->
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <---  auto transition  --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        continue; 
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F slanje resenja --->
        if (id == 7 && msg.sender == participants[13]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 512 == 512) {
        // <---  auto transition  --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}
