// test openai/gpt-4.1 - one-shot at 2025-06-11T23:40:21.088Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_5015db90_2cd3_4900_9985_94fd0de5740c {
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
        // <--- sid_6777CC5F_95E8_47D0_81E1_386859C92C78 Send court calender --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Send_court_calender here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid_EB726CD1_8C71_4F82_AACB_D6BDAD7B7683 Request sitting list (for each judge) --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Request_sitting_list_for_each_judge here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid_DEB38800_059C_493E_BD0C_64CF99763480 Resolve judge availability --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Resolve_judge_availability here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid_8E7F0F5A_2398_463E_BB42_8609C0CAD70C Send yearly shedule --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Send_yearly_shedule here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}