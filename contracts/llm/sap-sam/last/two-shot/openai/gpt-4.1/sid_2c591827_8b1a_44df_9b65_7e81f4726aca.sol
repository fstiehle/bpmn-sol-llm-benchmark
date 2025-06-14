// test openai/gpt-4.1 - two-shot at 2025-06-12T00:16:05.583Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;
  constructor(address[13] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-1ED0DF23_B541_4FA6_8580_D03802881F5C First contact --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-08335AEB_B1BF_426B_99AB_8C8530EEF0FB Inform Publisher --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EEFBB567_306F_49EC_8788_5EB90B7063D7 Instructions for publication --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-F3EC0F07_56AB_43B6_8395_E9067794DC02 drafts --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-879015FA_6568_4923_9101_3F50983FBBBE Request for publishing --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-4876DF19_BE6D_402C_864F_A93BA7F6B786 cancel publishing --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-05C0E28A_923E_47F1_82E3_1CB04BD358E6
      if (_tokenState & 64 == 64) {
        // This gateway has two outgoing sequence flows:
        // sid-380B1E83_807A_4A6B_ABA7_0F9ADA51E3D0 (default to end)
        // sid-37BBF21C_65A8_4153_B73E_F902972168DA (to sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E) [condition: conditions & 1 == 1]
        if (conditions & 1 == 1) {
          // <---  auto transition with condition --->
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          continue;
        } else {
          // <---  auto transition default (end) --->
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          break;
        }
      }
      // Exclusive Gateway sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E (converging)
      if (_tokenState & 256 == 256) {
        // This gateway has two incoming flows, single outgoing to sid-728D1640_42A6_4207_AABA_59C4E09E64FB
        // Just auto transition
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue;
      }
      // EventBasedGateway sid-728D1640_42A6_4207_AABA_59C4E09E64FB (exclusive diverging)
      if (_tokenState & 512 == 512) {
        // Two possible outgoing: sid-99C9DE60_7013_4C30_A115_90BDC40D60E4 (to drafts), sid-7EEDB87D_EE51_4D8F_BC96_2F9552C1BC04 (to cancel publishing)
        // We activate both paths, as EventBasedGateway waits for one to occur (whichever is enacted first).
        _tokenState &= ~uint(512);
        _tokenState |= 16 | 128;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}