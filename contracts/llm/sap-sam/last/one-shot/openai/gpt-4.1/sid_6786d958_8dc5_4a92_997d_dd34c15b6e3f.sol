// test openai/gpt-4.1 - one-shot at 2025-06-11T23:46:10.996Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_6786d958_8dc5_4a92_997d_dd34c15b6e3f {
  // Bit assignments:
  // 1   : Start Event
  // 2   : sid_40B088FB_BEF2_4CD4_B269_B0902EB49BF6 Request for Tender (taskID=3)
  // 4   : sid_B953A627_0553_47E5_9038_FC872838EA17 Exclusive Gateway (converging)
  // 8   : sid_546BF032_593C_4B67_93B7_A531E433B0A0 Make offer (taskID=5)
  // 16  : sid_3FD7392B_985E_4CFD_8444_055573C3AD47 Announce the scores (taskID=4)
  // 32  : sid_EC53D41D_4AE2_498C_B7A1_8BD251F3496E Exclusive Gateway (diverging)
  // 64  : sid_30065477_C3FC_44B6_9BAB_45FD254F6CF9 New request for tender (taskID=2)
  // 128 : sid_663F88C0_8E57_4A4A_B75C_F55BFBFB1127 Purchase product part (taskID=1)
  // 256 : sid_89204608_1AF9_4FF0_B8C6_4922274D038D End Event

  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;

  constructor(address[10] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // Start Event
      if (_tokenState & 1 == 1) {
        // <--- Start Event: move to Request for Tender --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }

      // sid_40B088FB_BEF2_4CD4_B269_B0902EB49BF6: Request for Tender (taskID=3), initiated by participants[4]
      if (_tokenState & 2 == 2) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- sid_40B088FB_BEF2_4CD4_B269_B0902EB49BF6 Request for Tender --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // sid_B953A627_0553_47E5_9038_FC872838EA17: Exclusive Gateway (converging)
      if (_tokenState & 4 == 4) {
        // incoming: sid-E33E804F-6638-4C98-A62F-B6221AE9BCBB, sid-F01C5F09-AFE3-434A-BE46-2C728B146D21
        // outgoing: sid-01C1A84B-319A-46CC-B1EA-722D093ADD86 (to Make offer)
        // default: sid-01C1A84B-319A-46CC-B1EA-722D093ADD86
        // This is a join: always go to Make offer when reached.
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        continue;
      }

      // sid_546BF032_593C_4B67_93B7_A531E433B0A0: Make offer (taskID=5), initiated by participants[8]
      if (_tokenState & 8 == 8) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- sid_546BF032_593C_4B67_93B7_A531E433B0A0 Make offer --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }

      // sid_3FD7392B_985E_4CFD_8444_055573C3AD47: Announce the scores (taskID=4), initiated by participants[6]
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- sid_3FD7392B_985E_4CFD_8444_055573C3AD47 Announce the scores --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // sid_EC53D41D_4AE2_498C_B7A1_8BD251F3496E: Exclusive Gateway (diverging)
      if (_tokenState & 32 == 32) {
        // outgoing: sid-2816E5E6-B6B5-478C-AEFE-0F8EC55C4E01 (to Purchase product part, cond: conditions & 1 == 1)
        //           sid-DF06E487-6949-4A8D-8AFA-7E5A58641B84 (to New request for tender, default)
        bool matched = false;
        if (conditions & 1 == 1) {
          // condition on sid-2816E5E6-B6B5-478C-AEFE-0F8EC55C4E01
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          matched = true;
          continue;
        }
        if (!matched) {
          // default to sid-DF06E487-6949-4A8D-8AFA-7E5A58641B84 (to New request for tender)
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }

      // sid_30065477_C3FC_44B6_9BAB_45FD254F6CF9: New request for tender (taskID=2), initiated by participants[2]
      if (_tokenState & 64 == 64) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- sid_30065477_C3FC_44B6_9BAB_45FD254F6CF9 New request for tender --->
          _tokenState &= ~uint(64);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }

      // sid_663F88C0_8E57_4A4A_B75C_F55BFBFB1127: Purchase product part (taskID=1), initiated by participants[1]
      if (_tokenState & 128 == 128) {
        if (id == 1 && msg.sender == participants[1]) {
          // <--- sid_663F88C0_8E57_4A4A_B75C_F55BFBFB1127 Purchase product part --->
          _tokenState &= ~uint(128);
          // End event reached.
          _tokenState = 0;
          break;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}