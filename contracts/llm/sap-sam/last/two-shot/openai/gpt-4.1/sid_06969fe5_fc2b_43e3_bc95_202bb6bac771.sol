// test openai/gpt-4.1 - two-shot at 2025-06-12T00:08:51.402Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_06969fe5_fc2b_43e3_bc95_202bb6bac771 {
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
      // <--- sid-F1E6C57F-8A72-4DC8-BF87-42B45DA8CD93 Sharing files --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Sharing files here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-DBA2078F-6FA5-481D-83B4-325BE4500E3F Ratinginformation --->
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Ratinginformation here --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-E53918A0-21BF-446B-B821-F5F45B4E3861 Enriching information --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Enriching information here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-F590B4CD-096E-44CC-9DF4-6CB5984F4D0E Retrieving information --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for Retrieving information here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- Exclusive Gateway sid-34E7111D_6C2E_4DFC_B4B3_66C2681E12E4 --->
      if (_tokenState & 2 == 2) {
        bool matched = false;
        // condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          matched = true;
          continue; 
        }
        // condition: conditions & 2 == 2
        if (!matched && (conditions & 2 == 2)) {
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          matched = true;
          continue; 
        }
        // default flow
        if (!matched) {
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          continue;
        }
      }
      // <--- Exclusive Gateway sid-D8020EDC_0BE5_4FE9_8289_5380EE6CEACE (converging join) --->
      if (_tokenState & 4 == 4) {
        // This is a join gateway (multiple incoming flows).
        // It waits for both 4 and 8 and 16 to be set, i.e., (4|8|16)==(tokenState&28)
        if ((_tokenState & 28) == 28) {
          _tokenState &= ~uint(28);
          _tokenState |= 64;
          continue;
        }
        // If only one branch comes in (in case of default), handle those
        // If only 4 or only 8 or only 16 is set (but not all three), we wait for joining
      }
      // <--- sid-34E7111D_6C2E_4DFC_B4B3_66C2681E12E4 to sid-208F7350_94CB_460E_8C21_26B90EB75F52 (Enriching information) --->
      if (_tokenState & 16 == 16 && (_tokenState & 8) == 0 && (_tokenState & 4) == 0) {
        // Only Enriching information path active, so after it, go to join gateway
        // This is handled in the task above by setting to 64 after task
      }
      // <--- sid-34E7111D_6C2E_4DFC_B4B3_66C2681E12E4 to sid-DBA2078F_6FA5_481D_83B4_325BE4500E3F (Ratinginformation) --->
      if (_tokenState & 8 == 8 && (_tokenState & 16) == 0 && (_tokenState & 4) == 0) {
        // Only Ratinginformation path active, so after it, go to join gateway
        // This is handled in the task above by setting to 64 after task
      }
      // <--- sid-34E7111D_6C2E_4DFC_B4B3_66C2681E12E4 default to join gateway --->
      if (_tokenState & 4 == 4 && (_tokenState & 8) == 0 && (_tokenState & 16) == 0) {
        // Only default path active, so after it, go to join gateway
        // This is handled in the exclusive gateway logic above by setting to 64 after join
      }
      break;
    }
    tokenState = _tokenState;
  }
}