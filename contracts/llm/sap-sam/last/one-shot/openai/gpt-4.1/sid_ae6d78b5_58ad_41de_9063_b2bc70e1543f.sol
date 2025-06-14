// test openai/gpt-4.1 - one-shot at 2025-06-12T00:05:20.468Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
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
      // Task 1: sid_365F91D0_DD9F_486E_B83C_DECBCA9A7B0A GPA Conversion, initiator: participants[0]
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for GPA Conversion here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // exclusiveGateway sid_114A78C7_A89B_4295_AF5D_D8A3EA853243, token: 2
      if (_tokenState & 2 == 2) {
        bool didRoute = false;
        // sid_9C5E0AB4_4993_4A5A_9B9F_DD3C9076D8D2: condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          // to sid_CAC00A41_BE49_426D_97A3_B98EC01408A2
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          didRoute = true;
          continue;
        }
        // default: sid_79DC6FB0_088C_42D7_9131_0A2C265754B2 to sid_FDC6DD88_3121_4EC4_BFBA_DFF7B6402410
        if (!didRoute) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }
      // Task 2: sid_FDC6DD88_3121_4EC4_BFBA_DFF7B6402410 Check for plagiarism, initiator: participants[2]
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for Check for plagiarism here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // exclusiveGateway sid_11B408AA_7D2E_4EF8_A0D7_F8C87421FD63, token: 8
      if (_tokenState & 8 == 8) {
        bool didRoute = false;
        // sid_E20BCC5F_0D67_4EB8_8E89_65D3B2591E67: condition: conditions & 2 == 2
        if (conditions & 2 == 2) {
          // to sid_B2BADF13_36D1_4B5D_AE77_E09232974D90
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          didRoute = true;
          continue;
        }
        // default: sid_C0AF2F59_5729_4577_A4DC_AF29304BF654 to sid_CAC00A41_BE49_426D_97A3_B98EC01408A2
        if (!didRoute) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          continue;
        }
      }
      // exclusiveGateway sid_CAC00A41_BE49_426D_97A3_B98EC01408A2, token: 16
      if (_tokenState & 16 == 16) {
        // always default: sid_48771C1D_2D35_4A6C_925E_C2B0DA6AA64F to sid_C569B56D_1EA0_46C8_81A4_12C4216C6406
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        continue;
      }
      // Task 3: sid_B2BADF13_36D1_4B5D_AE77_E09232974D90 Assess application letter, initiator: participants[4]
      if (_tokenState & 32 == 32) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for Assess application letter here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 4: sid_EE6F5910_1D15_4F9C_8C28_72AD4D9070D2 Assign ranking, initiator: participants[6]
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for Assign ranking here --->
          _tokenState &= ~uint(64);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // Task 5: sid_C569B56D_1EA0_46C8_81A4_12C4216C6406 Application marked failed, initiator: participants[8]
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for Application marked failed here --->
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // exclusiveGateway sid_28259204_E681_42B9_86C5_1DF0AF0DC7CB (converging), tokens: 512 or 1024
      if (_tokenState & 512 == 512 || _tokenState & 1024 == 1024) {
        // whenever either 512 or 1024 is active, go to next
        _tokenState &= ~(uint(512) | uint(1024));
        _tokenState |= 2048;
        continue;
      }
      // Task 6: sid_6AEC28B8_8F55_4AE8_908F_F60609161299 Create preliminary list of applications, initiator: participants[10]
      if (_tokenState & 2048 == 2048) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for Create preliminary list of applications here --->
          _tokenState &= ~uint(2048);
          _tokenState |= 0;
          break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}