// test openai/gpt-4.1 - two-shot at 2025-06-12T01:05:31.363Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_5823deaf_f759_45fe_9cab_90ce484355cd {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-0AB2B1E2_565E_492E_871C_50FF20A321C6 T1_Propose_supply_plan --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // EBG1: event-based gateway after Propose supply plan
        // diverges to: 
        //   sid-EE03DBA3-9FD6-4703-9BBC-D7F32BABD305 T2_Reject_proposal
        //   sid-88D3A0FA-60F7-4BC6-8785-C239506B46F9 T3_Accept_proposal
        //   sid-F8929F66-43D4-4F05-94E3-B254EB0E9B7B T4_Offer_counter_proposal
        // All are mutually exclusive, only one is chosen by task enact.
        // T2_Reject_proposal
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
        // T3_Accept_proposal
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue;
        }
        // T4_Offer_counter_proposal
        if (4 == id && msg.sender == participants[7]) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EE03DBA3_9FD6_4703_9BBC_D7F32BABD305 T2_Reject_proposal --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-88D3A0FA_60F7_4BC6_8785_C239506B46F9 T3_Accept_proposal --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-F8929F66_43D4_4F05_94E3_B254EB0E9B7B T4_Offer_counter_proposal --->
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // EBG2: event-based gateway after Offer counter-proposal
        // diverges to:
        //   sid-AF2D4571-93CA-4D0A-B19E-9982DFA90B60 T5_Accept_counter_proposal
        //   sid-A3BC0953-F5BA-4D9B-9E2B-0871FDB6CB35 T6_Reject_counter_proposal
        // Both are mutually exclusive, only one is chosen by task enact.
        // T5_Accept_counter_proposal
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
        // T6_Reject_counter_proposal
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-AF2D4571_93CA_4D0A_B19E_9982DFA90B60 T5_Accept_counter_proposal --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-A3BC0953_F5BA_4D9B_9E2B_0871FDB6CB35 T6_Reject_counter_proposal --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- ExclusiveGateway sid-5EE7F26E_1C5B_4A95_A958_C29C8597AC3C : Converging --->
        // Two incoming: from T5 and T6, default outgoing to end.
        // Always leads to end event, so auto transition.
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      if (_tokenState & 32 == 32) {
        // <--- EndEvent sid-F4E0DFDB_2240_4435_92B1_E9752BA03905 : TE1_Failure --->
        // Three incoming: from T2, T3, and from ExclusiveGateway.
        // End event reached, terminate process.
        _tokenState = 0;
        break;
      }
      if (_tokenState & 1024 == 1024) {
        // <--- EndEvent sid-F4E0DFDB_2240_4435_92B1_E9752BA03905 : TE1_Failure --->
        // End event reached, terminate process.
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}