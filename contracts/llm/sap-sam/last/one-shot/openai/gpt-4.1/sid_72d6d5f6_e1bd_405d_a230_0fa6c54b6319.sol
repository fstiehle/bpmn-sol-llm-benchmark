// test openai/gpt-4.1 - one-shot at 2025-06-11T23:49:05.437Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
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
      // Task 1: sid_87BBD4F0_2401_4A17_803C_8B904256971A (A)
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task 1 here --->
          _tokenState &= ~uint(2);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // Task 2: sid_22971FC7_11FC_4223_9CF5_8A4D2BB815E6 (B)
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task 2 here --->
          _tokenState &= ~uint(4);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // Task 3: sid_D6D85EBC_68B6_405B_BFB2_79A6B01A503B (A)
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task 3 here --->
          _tokenState &= ~uint(16);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Task 4: sid_BE199BE7_A0C8_4A0D_BA2D_BB991D00B15E (B)
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task 4 here --->
          _tokenState &= ~uint(32);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // Start Event: tokenState bit 1 (initial)
      if (_tokenState & 1 == 1) {
        // <--- Start Event: sid_0CC078CD_4775_45E8_BBBD_E7D9927D1310 --->
        // Outgoing to sid_914D89A4_148F_4085_B62D_2D1FBCFD66B1 (Exclusive Gateway, bit 8)
        _tokenState &= ~uint(1);
        _tokenState |= 8;
        continue;
      }
      // Exclusive Gateway: sid_914D89A4_148F_4085_B62D_2D1FBCFD66B1 (bit 8)
      if (_tokenState & 8 == 8) {
        bool transitioned = false;
        // Outgoing: sid_893877BD_94DA_48C8_B820_40D17DD912CD ("conditions & 1 == 1") -> task 2 (bit 4)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          transitioned = true;
        }
        // Outgoing: sid_FA3E8D6C_50F9_4542_96C8_9DD219CDFBE8 ("conditions & 2 == 2") -> parallel gateway (bit 128)
        else if (conditions & 2 == 2) {
          _tokenState &= ~uint(8);
          _tokenState |= 128;
          transitioned = true;
        }
        // Default: sid_99E08854_1B1C_47A7_8BD7_03460AE25FC1 -> task 1 (bit 2)
        if (!transitioned) {
          _tokenState &= ~uint(8);
          _tokenState |= 2;
        }
        continue;
      }
      // Parallel Gateway (Diverging): sid_6B496623_43BB_4F3F_B00E_878B7187A1D3 (bit 128)
      if (_tokenState & 128 == 128) {
        // Outgoing to task 3 (bit 16) and task 4 (bit 32)
        _tokenState &= ~uint(128);
        _tokenState |= 48;
        continue;
      }
      // Task 3 and Task 4 join at Parallel Gateway (Converging): sid_6B0874A1_FB91_4F84_A743_877EDA5CEBA7 (bit 256)
      if (_tokenState & 256 == 256) {
        // Wait for both task 3 (bit 16) and task 4 (bit 32) to be done
        if ((_tokenState & 48) == 0) {
          // Both finished, activate next gateway (sid_875E037A_C651_4762_A161_257334AEAFA7, bit 1024)
          _tokenState &= ~uint(256);
          _tokenState |= 1024;
          continue;
        }
      }
      // Task 2 join at Exclusive Gateway (Converging): sid_875E037A_C651_4762_A161_257334AEAFA7 (bit 64, see also below)
      if (_tokenState & 64 == 64) {
        // Wait for task 1 (bit 2) to be done
        if ((_tokenState & 2) == 0) {
          // Task 1 finished, activate end event (bit 2048)
          _tokenState &= ~uint(64);
          _tokenState |= 2048;
          continue;
        }
      }
      // Task 2 join at Exclusive Gateway (Converging): sid_875E037A_C651_4762_A161_257334AEAFA7 (bit 128)
      if (_tokenState & 128 == 128) {
        // Wait for task 2 (bit 4) to be done
        if ((_tokenState & 4) == 0) {
          _tokenState &= ~uint(128);
          _tokenState |= 1024;
          continue;
        }
      }
      // Parallel join at Exclusive Gateway (Converging): sid_875E037A_C651_4762_A161_257334AEAFA7 (bit 1024)
      if (_tokenState & 1024 == 1024) {
        // Wait for parallel join (bit 256) and/or task 2 join (bit 128 or 64) to be done
        // In this model, after 256, 128, or 64 is cleared, we reach here.
        // Next: activate end event (bit 2048)
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        continue;
      }
      // End Event: sid_32F79484_6A93_405A_BF4E_F1D001B75FC2 (bit 2048)
      if (_tokenState & 2048 == 2048) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}