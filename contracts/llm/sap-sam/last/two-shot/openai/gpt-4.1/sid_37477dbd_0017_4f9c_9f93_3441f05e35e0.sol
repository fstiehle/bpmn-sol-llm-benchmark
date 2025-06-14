// test openai/gpt-4.1 - two-shot at 2025-06-12T00:19:37.585Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_37477dbd_0017_4f9c_9f93_3441f05e35e0 {
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
      // sid-6F49A10A-9F81-4E12-A271-A6014D43428B: slanje opisa problema (taskID 1)
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task sid-6F49A10A-9F81-4E12-A271-A6014D43428B here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-0F1C9106-5B3F-4DE4-A575-F5210663165F: dobijanje detaljnog opisa problema (taskID 2)
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task sid-0F1C9106-5B3F-4DE4-A575-F5210663165F here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4: slanje resenja (taskID 3)
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-AD18DEB2-3CA2-4736-BBD1-884125893D49: slanje opisa problema (taskID 4)
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task sid-AD18DEB2-3CA2-4736-BBD1-884125893D49 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-661CD640-1BBE-4CA7-A659-6B26B74E592B: slanje resenja (taskID 5)
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task sid-661CD640-1BBE-4CA7-A659-6B26B74E592B here --->
        _tokenState &= ~uint(256);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-D1239A49-2E49-4621-9FD3-E699393B9961: slanje opisa problema (taskID 6)
      if (_tokenState & 512 == 512) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task sid-D1239A49-2E49-4621-9FD3-E699393B9961 here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F: slanje resenja (taskID 7)
      if (_tokenState & 1024 == 1024) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }

      // Exclusive Gateway sid-8AB97A5D-F1EB-476F-9EE5-9A126E191C7A
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // SequenceFlow sid-CC78063B-62AD-410E-ADEA-DE528903FDDA: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          transitioned = true;
          continue;
        }
        // Default: SequenceFlow sid-955F34B5-2DD6-4909-871A-D7AFBA5BC177 (to sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4)
        if (!transitioned) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      // Exclusive Gateway sid-451230A1-DC10-4A56-AC3B-F2E67D46DDAE
      if (_tokenState & 64 == 64) {
        bool transitioned = false;
        // SequenceFlow sid-56FC3AA2-3E44-4ABD-9399-CB754D0B9269: conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          transitioned = true;
          continue;
        }
        // Default: SequenceFlow sid-CED7D7C1-6279-4E65-B62C-5CDF43D10E2B (to sid-661CD640-1BBE-4CA7-A659-6B26B74E592B)
        if (!transitioned) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        }
      }

      // Parallel Gateway join and split logic
      // Parallel Split: sid-26AD080D-D2BA-4FFF-A84A-5ED32418E470 not in this model, but modeled as auto transitions below

      // Auto transitions between tasks/gateways
      // AD18DEB2... -> 451230A1...
      // D1239A49... -> 7F3063B4...
      // 7F3063B4... -> 661CD640...
      // 661CD640... -> CB6E348B...
      // CB6E348B... -> end

      // sid-AD18DEB2-... -> sid-451230A1-...
      if (_tokenState & 64 == 64) {
        // handled above (exclusive gateway)
        break;
      }
      // sid-D1239A49-... -> sid-7F3063B4...
      if (_tokenState & 1024 == 1024) {
        // handled above (via task 7)
        break;
      }
      // sid-7F3063B4... -> sid-661CD640...
      if (_tokenState & 256 == 256) {
        // handled above (via task 5)
        break;
      }
      // sid-661CD640... -> sid-CB6E348B...
      if (_tokenState & 16 == 16) {
        // handled above (via task 3)
        break;
      }

      // sid-0F1C9106-... -> sid-8AB97A5D...
      if (_tokenState & 4 == 4) {
        // handled above (exclusive gateway)
        break;
      }
      // sid-6F49A10A-... -> sid-0F1C9106...
      if (_tokenState & 2 == 2) {
        // handled above (via task 2)
        break;
      }

      // If no more valid transitions, break
      break;
    }
    tokenState = _tokenState;
  }
}