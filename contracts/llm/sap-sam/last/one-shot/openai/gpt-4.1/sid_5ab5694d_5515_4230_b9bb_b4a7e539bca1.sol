// test openai/gpt-4.1 - one-shot at 2025-06-11T23:43:07.703Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_5ab5694d_5515_4230_b9bb_b4a7e539bca1 {
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
      // Task 1: Send Inquiry (sid-8E16CDD8-FCCE-4281-86AC-4BCBCFE72039)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- Send_Inquiry task --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: Send Offer (sid-074D9CC7-91D3-4550-AE26-694F351C006F)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          // <--- Send_Offer task --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Task 3: Send Change Request (sid-4DD97F2F-327D-4F05-8D9C-9C37B85BED6B)
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- Send_Change_Request task --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 4: Send Rejection (sid-66D06C97-422F-4249-A81C-D6115A5D7F12)
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- Send_Rejection task --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // Task 5: Place Order (sid-ECB9028C-F467-49ED-B114-64F2097E035E)
      if (_tokenState & 16 == 16) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- Place_Order task --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Task 6: Find Designer (sid-9306CB9F-8A06-4759-93CD-F85DE42BF584)
      if (_tokenState & 32 == 32) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- Find_Designer task --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 7: Handle Graphics Production (sid-62DD5540-8F48-4ECF-8EE8-1A2F32A4FE52)
      if (_tokenState & 64 == 64) {
        if (id == 7 && msg.sender == participants[12]) {
          // <--- Handle_Graphics_Production task --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Task 8: Get Approval (sid-1BDEF833-BC6F-4918-9A00-0DFFCBC10F9E)
      if (_tokenState & 128 == 128) {
        if (id == 8 && msg.sender == participants[15]) {
          // <--- Get_Approval task --->
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break;
        }
      }
      // Exclusive Gateway: sid-9EFDDE1D_EB86_4A7D_90CF_568385F476F7 (bit 256)
      if (_tokenState & 256 == 256) {
        // incoming: from Send_Inquiry (1) or Send_Change_Request (4)
        // outgoing: default to Send_Offer (2)
        _tokenState &= ~uint(256);
        _tokenState |= 2;
        continue;
      }
      // Exclusive Gateway: sid-DA564472_047F_440A_9DAE_C7AA93AB37A7 (bit 512)
      if (_tokenState & 512 == 512) {
        bool matched = false;
        // (sid-4C5D671E-63B6-4131-812D-2E3F02E289FB): conditions & 1 == 1 --> Send_Rejection (8)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(512);
          _tokenState |= 8;
          matched = true;
        }
        // (sid-0A6BFFFE-F7CB-4DC6-A2D9-39284D35EF2B): conditions & 2 == 2 --> Place_Order (16)
        else if (conditions & 2 == 2) {
          _tokenState &= ~uint(512);
          _tokenState |= 16;
          matched = true;
        }
        // default: (sid-B923F819-A9A3-484C-A2BC-2F9093641E76) --> Send_Change_Request (4)
        if (!matched) {
          _tokenState &= ~uint(512);
          _tokenState |= 4;
        }
        continue;
      }
      // After Send_Inquiry (1), activate sid-9EFDDE1D_EB86_4A7D_90CF_568385F476F7 (256)
      if (_tokenState & 2 == 2 && id == 0) {
        // Actually, handled above in task logic
      }
      // After Send_Offer (2), activate sid-DA564472_047F_440A_9DAE_C7AA93AB37A7 (512)
      if (_tokenState & 4 == 4 && id == 0) {
        // Handled in task logic above
      }
      // After Place_Order (16), activate Find_Designer (32)
      // After Find_Designer (32), activate Handle_Graphics_Production (64)
      // After Handle_Graphics_Production (64), activate Get_Approval (128)
      // End event: after Send_Rejection (8) or Get_Approval (128), terminate
      break;
    }
    tokenState = _tokenState;
  }
}
