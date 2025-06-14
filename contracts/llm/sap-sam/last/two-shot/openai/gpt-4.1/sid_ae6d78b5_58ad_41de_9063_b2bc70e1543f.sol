// test openai/gpt-4.1 - two-shot at 2025-06-12T01:59:51.351Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // <--- sid-365F91D0-DD9F-486E-B83C-DECBCA9A7B0A GPA_Conversion --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for GPA Conversion here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-FDC6DD88-3121-4EC4-BFBA-DFF7B6402410 Check_for_plagiarism --->
      if (_tokenState & 16 == 16) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Check for plagiarism here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-B2BADF13-36D1-4B5D-AE77-E09232974D90 Assess_application_letter --->
      if (_tokenState & 128 == 128) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Assess application letter here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-EE6F5910-1D15-4F9C-8C28-72AD4D9070D2 Assign_ranking --->
      if (_tokenState & 256 == 256) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Assign ranking here --->
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // <--- sid-C569B56D-1EA0-46C8-81A4-12C4216C6406 Application_marked_failed --->
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for Application marked failed here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // <--- sid-6AEC28B8-8F55-4AE8-908F-F60609161299 Create_preliminary_list_of_applications --->
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for Create preliminary list of applications here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- Gateway sid-114A78C7_A89B_4295_AF5D_D8A3EA853243 (Diverging Exclusive) --->
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        // <--- conditional: conditions & 1 == 1 --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          transitioned = true;
        }
        // <--- default: GPA is accepted --->
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
        }
        continue;
      }
      // <--- Gateway sid-11B408AA_7D2E_4EF8_A0D7_F8C87421FD63 (Diverging Exclusive) --->
      if (_tokenState & 32 == 32) {
        bool transitioned = false;
        // <--- conditional: conditions & 2 == 2 --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          transitioned = true;
        }
        // <--- default: Letter contains plagiarism --->
        if (!transitioned) {
          _tokenState &= ~uint(32);
          _tokenState |= 64;
        }
        continue;
      }
      // <--- Gateway sid-CAC00A41_BE49_426D_97A3_B98EC01408A2 (Converging Exclusive) --->
      if (_tokenState & 72 == 72) {
        // (512 = sid-C569B56D-1EA0-46C8-81A4-12C4216C6406, 72 = 8+64)
        _tokenState &= ~uint(72);
        _tokenState |= 512;
        continue;
      }
      // <--- Gateway sid-28259204_E681_42B9_86C5_1DF0AF0DC7CB (Converging Exclusive) --->
      if (_tokenState & 1536 == 1536) {
        // (1024 = sid-6AEC28B8-8F55-4AE8-908F-F60609161299, 512 = sid-C569B56D-1EA0-46C8-81A4-12C4216C6406)
        _tokenState &= ~uint(1536);
        _tokenState |= 1024;
        continue;
      }
      // <--- Gateway sid-F3B9D6A7_4F6B_457E_9D73_8B4B517162FF (auto) --->
      // <--- Gateway sid-0B3D684B_7F60_478C_92D5_E849D06FEB46 (auto) --->
      // <--- Gateway sid-B6B6A8B9_1ED2_49D4_B71C_4C0EE83D3C05 (auto) --->
      // <--- Gateway sid-EE98E507_8961_4A5D_9D29_FE0466026BA7 (auto) --->
      // <--- Gateway sid-F64F0762_7035_4A0F_9957_4A494DC7E016 (auto) --->
      // <--- Gateway sid-E6626853_3FB6_45B6_9103_CB13B5C431D4 (auto) --->
      break;
    }
    tokenState = _tokenState;
  }
}