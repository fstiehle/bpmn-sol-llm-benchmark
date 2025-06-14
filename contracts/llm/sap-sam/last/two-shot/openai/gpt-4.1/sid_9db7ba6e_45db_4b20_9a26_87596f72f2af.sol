// test openai/gpt-4.1 - two-shot at 2025-06-12T01:54:25.176Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9db7ba6e_45db_4b20_9a26_87596f72f2af {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-A19CE1A5_B109_48AC_91B5_D068C96DD84C lodge cancellation request --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ExclusiveGateway sid-EDD9216B_BD9F_41A4_B44C_D1DBF0A564F6 --->
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // <--- conditions & 1 == 1: to sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          didTransition = true;
        }
        if (!didTransition) {
          // <--- default: to sid-93377547-AA5F-4B50-AD6A-B7329051D7AA --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-93377547_AA5F_4B50_AD6A_B7329051D7AA notify penalty --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ExclusiveGateway sid-2A47A850_480C_4A09_8940_42959421F821 --->
        bool didTransition = false;
        if (conditions & 2 == 2) {
          // <--- conditions & 2 == 2: to sid-DA2E7957-7657-496F-9F71-05B305AB27BD --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          didTransition = true;
        }
        if (!didTransition) {
          // <--- default: to sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 --->
          _tokenState &= ~uint(16);
          _tokenState |= 4;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EFBA5F44_4987_41D9_8774_26F9DF28A974 notify cancellation --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-DA2E7957_7657_496F_9F71_05B305AB27BD reject cancellation --->
        if (4 == id && msg.sender == participants[6]) {
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