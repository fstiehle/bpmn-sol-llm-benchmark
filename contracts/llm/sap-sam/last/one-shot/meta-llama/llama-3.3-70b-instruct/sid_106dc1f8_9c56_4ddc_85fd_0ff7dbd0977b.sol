// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T08:58:43.317Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_106dc1f8_9c56_4ddc_85fd_0ff7dbd0977b {
  uint public tokenState = 1;
  address[19] public participants;
  uint public conditions;
  mapping (uint => uint) public taskIDs;
  constructor(address[19] memory _participants) {
    participants = _participants;
    taskIDs[1] = 0x1;
    taskIDs[2] = 0x2;
    taskIDs[3] = 0x4;
    taskIDs[4] = 0x8;
    taskIDs[5] = 0x10;
    taskIDs[6] = 0x20;
    taskIDs[7] = 0x40;
    taskIDs[8] = 0x80;
    taskIDs[9] = 0x100;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & taskIDs[1] == taskIDs[1]) {
        // <--- ChoreographyTask_1vnykqp Donationbutton anklicken --->
        if (id == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[1];
        _tokenState |= taskIDs[2];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[2] == taskIDs[2]) {
        // <--- ChoreographyTask_1E986972_CECF_4DC9_8AC7_3BC8307E90C4 leiten auf neue webseite weiter --->
        if (id == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[2];
        _tokenState |= taskIDs[3];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[3] == taskIDs[3]) {
        // <--- ChoreographyTask_E48D12F9_BFD7_4A0C_8FB6_FD0EE5A205BC Daten ausfüllen --->
        if (id == 3 && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[3];
        _tokenState |= taskIDs[9] | taskIDs[4];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[4] == taskIDs[4]) {
        // <--- ChoreographyTask_F6B8C1EE_C239_4E8C_9AF3_246ED438A4BC Spende übermitteln --->
        if (id == 4 && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[4];
        _tokenState |= taskIDs[5];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[5] == taskIDs[5]) {
        // <--- ChoreographyTask_53FE6C01_E4D5_4716_A00E_F84996F2BC00 Spende erhalten --->
        if (id == 5 && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[5];
        _tokenState |= taskIDs[6];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[6] == taskIDs[6]) {
        // <--- ChoreographyTask_795BDE4F_A952_455E_887A_EA41B29BCBF2 Spende im Stream anzeigen --->
        if (id == 6 && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[6];
        _tokenState |= taskIDs[7] | taskIDs[8];
        id = 0;
        continue; 
        }
      }
      if (_tokenState & taskIDs[7] == taskIDs[7]) {
        // <--- ChoreographyTask_BCB18608_A5AB_4284_A4C9_1A81DA0CB9E5 Donation vorlesen --->
        if (id == 7 && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[7];
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & taskIDs[8] == taskIDs[8]) {
        // <--- ChoreographyTask_D7A36BA5_1446_4C4A_AD55_69BDBAE7A8CA Donation wird nicht vorgelesen --->
        if (id == 8 && msg.sender == participants[15]) {
        // <--- custom code for task here --->
        _tokenState &= ~taskIDs[8];
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & taskIDs[9] == taskIDs[9]) {
        // <---  auto transition  --->
        if (conditions & 1 == 1) {
          _tokenState &= ~taskIDs[9];
          _tokenState |= taskIDs[4];
          continue; 
        } else {
          _tokenState &= ~taskIDs[9];
          _tokenState |= taskIDs[9];
          continue; 
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
