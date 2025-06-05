// test large Model - One Shot at 2025-06-05T15:23:53.520Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen3_235b_a22b_one_shot_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;

  constructor(address[14] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;

    while (_tokenState != 0) {
      if ((_tokenState & 1) == 1) {
        // ChoreographyTask sid-EC58EE38-642E-435C-BD7C-5961E5EA7190
        if (taskID == 0 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }

      if ((_tokenState & 2) == 2) {
        // ChoreographyTask sid-CE66FED6-A686-4096-B422-CD0BA169BE36
        if (taskID == 1 && msg.sender == participants[3]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4 | 8;
          continue;
        }
      }

      if ((_tokenState & 4) == 4) {
        // SequenceFlow sid-33A8E44F-06B2-4533-A74B-F7050EDEE454
        // ChoreographyTask sid-1E0251F9-E26D-4B9D-BD82-825425624E08
        if (taskID == 2 && msg.sender == participants[5]) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }

      if ((_tokenState & 8) == 8) {
        // SequenceFlow sid-12D77D4B-7601-44F0-9584-D53B9ED172D7
        if ((conditions & 1) == 1) {
          // ChoreographyTask sid-13670263-52E5-49D8-9F4B-0558669622F0
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }

      if ((_tokenState & 32) == 32) {
        // ChoreographyTask sid-13670263-52E5-49D8-9F4B-0558669622F0
        if (taskID == 3 && msg.sender == participants[6]) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }

      if ((_tokenState & 64) == 64) {
        // SequenceFlow sid-D440A563-2988-4875-AF79-8F6451742A5A
        // ChoreographyTask sid-D4B484C1-78F8-4D81-957D-2DAF07E48494
        if (taskID == 4 && msg.sender == participants[9]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }

      if ((_tokenState & 128) == 128) {
        // SequenceFlow sid-18F35DF9-86E4-44EA-A5A8-F795DF59F12C
        // ChoreographyTask sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 -> sid-1E0251F9-E26D-4B9D-BD82-825425624E08
        _tokenState &= ~uint(128);
        _tokenState |= 16;
        continue;
      }

      if ((_tokenState & 256) == 256) {
        // SequenceFlow sid-9DB58BF7-4DA6-4FA7-9891-35B252277184
        if ((conditions & 2) == 2) {
          // ChoreographyTask sid-6D099124-B421-417F-862D-8C820BA41D08
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          continue;
        }
      }

      if ((_tokenState & 512) == 512) {
        // ChoreographyTask sid-6D099124-B421-417F-862D-8C820BA41D08
        if (taskID == 5 && msg.sender == participants[10]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          continue;
        }
      }

      if ((_tokenState & 1024) == 1024) {
        // ChoreographyTask sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        continue;
      }

      if ((_tokenState & 2048) == 2048) {
        // SequenceFlow sid-FE068655-7026-4742-A5A9-13BF1E8D3E83
        // ChoreographyTask sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 -> sid-D4B484C1-78F8-4D81-957D-2DAF07E48494
        _tokenState &= ~uint(2048);
        _tokenState |= 64;
        continue;
      }

      if ((_tokenState & 16) == 16) {
        // ChoreographyTask sid-1E0251F9-E26D-4B9D-BD82-825425624E08
        if (taskID == 2 && msg.sender == participants[4]) {
          _tokenState &= ~uint(16);
          break; // End of process
        }
      }

      break;
    }

    tokenState = _tokenState;
  }
}