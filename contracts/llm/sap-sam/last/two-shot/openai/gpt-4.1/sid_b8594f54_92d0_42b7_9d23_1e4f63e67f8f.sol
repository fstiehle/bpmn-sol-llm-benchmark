// test openai/gpt-4.1 - two-shot at 2025-06-12T02:03:25.529Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_b8594f54_92d0_42b7_9d23_1e4f63e67f8f {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-26CB3185-CCC5-456F-B2ED-69FD7984012C Slanje problema
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-F46217C9-37D7-4CDC-9818-CFCE7C3F78F5 Dobijanje detaljnijeg opisa problema
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // sid-A28F253A-3BCF-4582-ACD3-195B68766D90 Slanje resenja
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-7626F4C0-564C-4869-A6D7-2540D55E5360 Pitanje podrske prvog nivoa
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // sid-F61AC55B-43D7-4034-9F4E-CB28D2A06362 Slanje resenja
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      // sid-D68FC3ED-F557-4118-ADE0-BEFEE27D4FD2 Pitanje podrske II nivoa
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      // sid-0D7629F1-CA9A-490A-9642-3AE48DAF9070 Slanje resenja
      if (_tokenState & 512 == 512) {
        if (7 == id && msg.sender == participants[13]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- Gateway sid-C4A16CD0_061C_432C_BE4E_C9EEC4C84C3C [Operater zna resenje?] --->
      if (_tokenState & 4 == 4) {
        bool matched = false;
        if (conditions & 1 == 1) {
          // [Operater zna resenje?] -> [DA]
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        if (!matched) {
          // [Operater zna resenje?] default
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          continue;
        }
      }
      // <--- Gateway sid-396483CB_FA0F_455F_94CE_5F948725DA9E [Podrska prvog nivoa zna da resi?] --->
      if (_tokenState & 32 == 32) {
        bool matched = false;
        if (conditions & 2 == 2) {
          // [Podrska prvog nivoa zna da resi?] -> conditions & 2 == 2
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          matched = true;
          continue;
        }
        if (!matched) {
          // [Podrska prvog nivoa zna da resi?] default
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      // <--- join+split for sid-FDF43B13_45D9_453A_B182_F55FC7B7299C (from 128) --->
      if (_tokenState & 256 == 256) {
        // only one incoming
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        continue;
      }
      // <--- join+split for sid-E425A5CB_0FA6_40E6_848E_FB1B3DE1BB1F (from 64) --->
      if (_tokenState & 8 == 8) {
        // Already handled above
      }
      // <--- join+split for sid-966D6777_66B6_4BE2_BE78_59A7A13AFC97 (from 512) --->
      // Already handled above
      // <--- join+split for sid-BA89455E_57FE_43FE_A139_A24268E67660 (from 8) --->
      // Already handled above
      break;
    }
    tokenState = _tokenState;
  }
}