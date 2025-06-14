// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:04:54.109Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9db7ba6e_45db_4b20_9a26_87596f72f2af {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while (_tokenState!= 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-A19CE1A5-B109-48AC-91B5-D068C96DD84C lodge cancellation request --->
        if (1 == taskID && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-EDD9216B-BD9F-41A4-B44C-D1DBF0A564F6 --->
        if (conditions & 1 == 1) {
          // <--- auto transition to ChoreographyTask sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 notify cancellation --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        } else {
          // <--- auto transition to ChoreographyTask sid-93377547-AA5F-4B50-AD6A-B7329051D7AA notify penalty --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 notify cancellation --->
        if (2 == taskID && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          taskID = 0;
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-93377547-AA5F-4B50-AD6A-B7329051D7AA notify penalty --->
        if (3 == taskID && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ExclusiveGateway sid-2A47A850-480C-4A09-8940-42959421F821 --->
        if (conditions & 2 == 2) {
          // <--- auto transition to ChoreographyTask sid-DA2E7957-7657-496F-9F71-05B305AB27BD reject cancellation --->
          _tokenState &= ~uint(16);
          _tokenState |= 64;
          continue;
        } else {
          // <--- auto transition to ChoreographyTask sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 notify cancellation --->
          _tokenState &= ~uint(16);
          _tokenState |= 4;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- ChoreographyTask sid-DA2E7957-7657-496F-9F71-05B305AB27BD reject cancellation --->
        if (4 == taskID && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
