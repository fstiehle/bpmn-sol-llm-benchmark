// test openai/gpt-4.1 - two-shot at 2025-06-12T01:07:18.436Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_5ab5694d_5515_4230_b9bb_b4a7e539bca1 {
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

      // <--- sid-8E16CDD8-FCCE-4281-86AC-4BCBCFE72039 Send Inquiry --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // <--- sid-074D9CC7-91D3-4550-AE26-694F351C006F Send Offer --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // <--- sid-4DD97F2F-327D-4F05-8D9C-9C37B85BED6B Send Change Request --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }

      // <--- sid-66D06C97-422F-4249-A81C-D6115A5D7F12 Send Rejection --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
        }
      }

      // <--- sid-ECB9028C-F467-49ED-B114-64F2097E035E Place Order --->
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // <--- sid-9306CB9F-8A06-4759-93CD-F85DE42BF584 Find Designer --->
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }

      // <--- sid-62DD5540-8F48-4ECF-8EE8-1A2F32A4FE52 Handle Graphics Production --->
      if (_tokenState & 64 == 64) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }

      // <--- sid-1BDEF833-BC6F-4918-9A00-0DFFCBC10F9E Get Approval --->
      if (_tokenState & 128 == 128) {
        if (8 == id && msg.sender == participants[15]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }

      // <--- Exclusive Gateway sid-9EFDDE1D_EB86_4A7D_90CF_568385F476F7 --->
      if (_tokenState & 2 == 2) {
        // This gateway has one outgoing: default to sid-074D9CC7_91D3_4550_AE26_694F351C006F (bit 2)
        _tokenState &= ~uint(2);
        _tokenState |= 2;
        continue;
      }

      // <--- Exclusive Gateway sid-DA564472_047F_440A_9DAE_C7AA93AB37A7 --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        if (!didTransition && (conditions & 1 == 1)) {
          // sid-4C5D671E_63B6_4131_812D_2E3F02E289FB to sid-66D06C97_422F_4249_A81C_D6115A5D7F12 (bit 8)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
          continue;
        }
        if (!didTransition && (conditions & 2 == 2)) {
          // sid-0A6BFFFE_F7CB_4DC6_A2D9_39284D35EF2B to sid-ECB9028C_F467_49ED_B114_64F2097E035E (bit 16)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default sid-B923F819_A9A3_484C_A2BC_2F9093641E76 to sid-4DD97F2F_327D_4F05_8D9C_9C37B85BED6B (bit 4)
          _tokenState &= ~uint(4);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- After sid-ECB9028C_F467_49ED_B114_64F2097E035E Place Order (bit 16) auto transition to sid-9306CB9F_8A06_4759_93CD_F85DE42BF584 (bit 32) --->
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        continue;
      }

      // <--- After sid-9306CB9F_8A06_4759_93CD_F85DE42BF584 Find Designer (bit 32) auto transition to sid-62DD5540_8F48_4ECF_8EE8_1A2F32A4FE52 (bit 64) --->
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        continue;
      }

      // <--- After sid-62DD5540_8F48_4ECF_8EE8_1A2F32A4FE52 Handle Graphics Production (bit 64) auto transition to sid-1BDEF833_BC6F_4918_9A00_0DFFCBC10F9E Get Approval (bit 128) --->
      if (_tokenState & 64 == 64) {
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }

      // <--- After sid-4DD97F2F_327D_4F05_8D9C_9C37B85BED6B Send Change Request (bit 4) auto transition to sid-9EFDDE1D_EB86_4A7D_90CF_568385F476F7 (bit 2) --->
      if (_tokenState & 4 == 4) {
        _tokenState &= ~uint(4);
        _tokenState |= 2;
        continue;
      }

      break;
    }
    tokenState = _tokenState;
  }
}