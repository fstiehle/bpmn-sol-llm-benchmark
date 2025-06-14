// test openai/gpt-4.1 - two-shot at 2025-06-12T20:40:04.079Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;
  constructor(address[16] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // oryx_3CC394C6_8CE0_404C_B2B7_96B3F010E4AE: Submit a "physical" order (taskID 1, participant[0])
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Submit_a_physical_order here --->
        _tokenState &= ~uint(2);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // oryx_5F252A9D_C258_42C7_89BF_5A20AD869050: Submit a "digital" order (taskID 2, participant[2])
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Submit_a_digital_order here --->
        _tokenState &= ~uint(4);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // oryx_96F23DC7_0361_4838_9D5D_19ABFD352340: Package delivery (taskID 3, participant[4])
      if (_tokenState & 256 == 256) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Package_delivery here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // oryx_386066EF_69B6_4A9D_8270_E32873438891: Notify arrival (taskID 4, participant[6])
      if (_tokenState & 128 == 128) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Notify_arrival here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // oryx_99D1F9AD_E51E_454B_B1B3_CBE1A6D08C47: Payement confirmation (taskID 5, participant[8])
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Payement_confirmation here --->
        _tokenState &= ~uint(512);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // oryx_4089513A_8987_431B_AFD2_372DCC5842F2: Package delivered (taskID 6, participant[10])
      if (_tokenState & 2048 == 2048) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for Package_delivered here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // oryx_58F5A854_AF92_44FA_9196_50C74C4D4B73: Payment confirmation (taskID 7, participant[12])
      if (_tokenState & 8192 == 8192) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for Payment_confirmation here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 32768;
        id = 0;
        continue;
        }
      }
      // oryx_C94079F4_D673_4D03_86CA_841A4120001E: Check Order Status (taskID 8, participant[14])
      if (_tokenState & 16 == 16) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for Check_Order_Status here --->
        _tokenState &= ~uint(16);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway oryx_3222FEF9_EE7F_419B_8AB2_60FBF18695DF (bit 1)
      if (_tokenState & 1 == 1) {
        // two outgoing flows:
        // - oryx_34E64F30_49CE_4C9C_8D03_2F2A16E1E781 -> oryx_3CC394C6_8CE0_404C_B2B7_96B3F010E4AE (bit 2, no condition, default)
        // - oryx_AD52D699_618A_4DB3_9663_99FD398A587A -> oryx_5F252A9D_C258_42C7_89BF_5A20AD869050 (bit 4, condition: conditions & 1 == 1)
        bool _exclusiveTaken = false;
        if ((conditions & 1 == 1)) {
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          _exclusiveTaken = true;
        }
        if (!_exclusiveTaken) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
        }
        continue;
      }
      // ExclusiveGateway oryx_7EBD1558_F061_416B_8C86_8214A99F180D (bit 1024)
      if (_tokenState & 1024 == 1024) {
        // two outgoing flows:
        // - oryx_B8A9AB8C_B249_48C2_8395_64B00E305564 -> oryx_386066EF_69B6_4A9D_8270_E32873438891 (bit 128, default)
        // - oryx_4A4D4ABC_E6BC_4E40_8DC4_38D80CD686D9 -> oryx_96F23DC7_0361_4838_9D5D_19ABFD352340 (bit 256, condition: conditions & 2 == 2)
        bool _exclusiveTaken2 = false;
        if ((conditions & 2 == 2)) {
          _tokenState &= ~uint(1024);
          _tokenState |= 256;
          _exclusiveTaken2 = true;
        }
        if (!_exclusiveTaken2) {
          _tokenState &= ~uint(1024);
          _tokenState |= 128;
        }
        continue;
      }
      // ExclusiveGateway oryx_D6066501_0C0D_4B05_BE6F_3674FAE64140 (bit 32)
      if (_tokenState & 32 == 32) {
        // two incoming: oryx_3CC394C6_8CE0_404C_B2B7_96B3F010E4AE (bit 2) and oryx_5F252A9D_C258_42C7_89BF_5A20AD869050 (bit 4)
        // single outgoing: oryx_C94079F4_D673_4D03_86CA_841A4120001E (bit 16)
        _tokenState &= ~uint(32);
        _tokenState |= 16;
        continue;
      }
      // ExclusiveGateway oryx_87DDC14A_D3EF_46BE_9CA4_D3DD7B6353C5 (bit 32768)
      if (_tokenState & 32768 == 32768) {
        // two incoming: oryx_58F5A854_AF92_44FA_9196_50C74C4D4B73 (bit 8192) and oryx_99D1F9AD_E51E_454B_B1B3_CBE1A6D08C47 (bit 512)
        // single outgoing: end
        _tokenState &= ~uint(32768);
        _tokenState |= 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
