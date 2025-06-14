// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:29:01.384Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
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
      if (_tokenState & 2 == 2) {
        // <--- oryx_3CC394C6-8CE0-404C-B2B7-96B3F010E4AE Submit a physical order --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- oryx_5F252A9D-C258-42C7-89BF-5A20AD869050 Submit a digital order --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- oryx_C94079F4-D673-4D03-86CA-841A4120001E Check Order Status --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- oryx_386066EF-69B6-4A9D-8270-E32873438891 Notify arrival --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- oryx_96F23DC7-0361-4838-9D5D-19ABFD352340 Package delivery --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- oryx_99D1F9AD-E51E-454B-B1B3-CBE1A6D08C47 Payment confirmation --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- oryx_4089513A-8987-431B-AFD2-372DCC5842F2 Package delivered --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- oryx_58F5A854-AF92-44FA-9196-50C74C4D4B73 Payment confirmation --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 1 == 1) {
        if (conditions & 1 == 1) {
          // <--- auto transition oryx_3222FEF9-EE7F-419B-8AB2-60FBF18695DF --->
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          continue; 
        } else {
          // <--- default path oryx_3222FEF9-EE7F-419B-8AB2-60FBF18695DF --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- auto transition oryx_D6066501-0C0D-4B05-BE6F-3674FAE64140 --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue; 
      }
      if (_tokenState & 32 == 32) {
        if (conditions & 2 == 2) {
          // <--- auto transition oryx_7EBD1558-F061-416B-8C86-8214A99F180D --->
          _tokenState &= ~uint(32);
          _tokenState |= 256;
          continue; 
        } else {
          // <--- default path oryx_7EBD1558-F061-416B-8C86-8214A99F180D --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue; 
        }
      }
      if (_tokenState & 3072 == 3072) {
        // <--- auto transition oryx_87DDC14A-D3EF-46BE-9CA4-D3DD7B6353C5 --->
        _tokenState &= ~uint(3072);
        _tokenState |= 0;
        break; // is end
      }
      break;
    }
    tokenState = _tokenState;
  }
}