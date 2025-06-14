// test openai/gpt-4.1 - one-shot at 2025-06-11T23:38:57.028Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
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
      if (_tokenState & 1 == 1) {
        // <--- sid_8382BE04_333B_4CFB_8F63_AF54B9DC4243 place_book_order --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_6F700DF7_4544_413A_8DED_F158468BA83E place_confirm_back_order --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_A9CAF9F4_C96A_433F_A9E2_B1852E424450 send_invoice --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_FA1EC6B2_A97F_451B_848C_2653F126F817 send_shipment_information --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid_0B14E175_63F6_4EA0_A1A3_3EBC30E807B7 issue_shipment --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid_FDFE5AC6_2C1C_4A5D_8208_747618BC9359 deliver_shipment --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid_05AA275D_E5B4_4A74_BA38_E31D1EC4EDB9 send_payment --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Parallel Gateway sid_928CC788_D9A2_4DA1_840E_CCC50154A57C (Split)
      if (_tokenState & 12 == 12) {
        // Precondition: both tokens sid_A9CAF9F4_C96A_433F_A9E2_B1852E424450 (4) and sid_FA1EC6B2_A97F_451B_848C_2653F126F817 (8) may be split
        _tokenState &= ~uint(12);
        _tokenState |= 4 | 8;
        continue;
      }
      // Parallel Gateway sid_0275EE9A_3006_4D29_8B40_03B5B46726E8 (Join)
      if (_tokenState & 192 == 192) {
        // Precondition: both tokens sid_FDFE5AC6_2C1C_4A5D_8208_747618BC9359 (64) and sid_A9CAF9F4_C96A_433F_A9E2_B1852E424450 (128) must be present
        _tokenState &= ~uint(192);
        _tokenState |= 128;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}