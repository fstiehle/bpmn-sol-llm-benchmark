// test openai/gpt-4.1 - one-shot at 2025-06-12T00:00:36.901Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_9db7ba6e_45db_4b20_9a26_87596f72f2af {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // --- sid-A19CE1A5-B109-48AC-91B5-D068C96DD84C : lodge_cancellation_request ---
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for lodge_cancellation_request here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-EDD9216B-BD9F-41A4-B44C-D1DBF0A564F6 ---
      if (_tokenState & 2 == 2) {
        // Has two outgoing: penalty (default), and conditions_and_1_eq_1 (conditional)
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // sequenceFlow sid-205838E1-631C-468B-9EFB-DA55D7EEC4C9: to sid-EFBA5F44-4987-41D9-8774-26F9DF28A974
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-25E65ABC-0024-43B9-A951-75B0BA4C8FFC to sid-93377547-AA5F-4B50-AD6A-B7329051D7AA
          _tokenState &= ~uint(2);
          _tokenState |= 8;
        }
        continue;
      }
      // --- sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 : notify_cancellation ---
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for notify_cancellation here --->
          _tokenState &= ~uint(4);
          // End event: terminate
          _tokenState = 0;
          break;
        }
      }
      // --- sid-93377547-AA5F-4B50-AD6A-B7329051D7AA : notify_penalty ---
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for notify_penalty here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-2A47A850-480C-4A09-8940-42959421F821 ---
      if (_tokenState & 16 == 16) {
        // Has two outgoing: accept (no condition, not default), and conditions_and_2_eq_2 (conditional, default)
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // sequenceFlow sid-AC014977-5870-4B04-991A-B4F5ADB8CE18: to sid-DA2E7957-7657-496F-9F71-05B305AB27BD
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-9D31BFCB-EC2F-4A02-9EF1-C4D6485AA715 to sid-EFBA5F44-4987-41D9-8774-26F9DF28A974
          _tokenState &= ~uint(16);
          _tokenState |= 4;
        }
        continue;
      }
      // --- sid-DA2E7957-7657-496F-9F71-05B305AB27BD : reject_cancellation ---
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for reject_cancellation here --->
          _tokenState &= ~uint(32);
          // End event: terminate
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}