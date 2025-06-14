// test openai/gpt-4.1 - two-shot at 2025-06-12T20:40:59.889Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_72d6d5f6_e1bd_405d_a230_0fa6c54b6319 {
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
      // --- sid-87BBD4F0-2401-4A17-803C-8B904256971A (A) ---
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
          // --- custom code for A ---
          _tokenState &= ~uint(2);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // --- sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6 (B) ---
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // --- custom code for B ---
          _tokenState &= ~uint(4);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // --- sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B (A) ---
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // --- custom code for A ---
          _tokenState &= ~uint(16);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      // --- sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E (B) ---
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
          // --- custom code for B ---
          _tokenState &= ~uint(32);
          _tokenState |= 2048;
          id = 0;
          continue;
        }
      }
      // --- ExclusiveGateway sid-914D89A4_148F_4085_B62D_2D1FBCFD66B1 ---
      if (_tokenState & 1 == 1) {
        bool matched = false;
        if (!matched && (conditions & 1 == 1)) {
          // sid-893877BD-94DA-48C8-B820-40D17DD912CD (to sid-22971FC7_11FC_4223_9CF5_8A4D2BB815E6)
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          matched = true;
          continue;
        }
        if (!matched && (conditions & 2 == 2)) {
          // sid-FA3E8D6C-50F9-4542-96C8-9DD219CDFBE8 (to sid-6B496623_43BB_4F3F_B00E_878B7187A1D3)
          _tokenState &= ~uint(1);
          _tokenState |= 8;
          matched = true;
          continue;
        }
        if (!matched) {
          // default sid-99E08854-1B1C-47A7-8BD7-03460AE25FC1 (to sid-87BBD4F0_2401_4A17_803C_8B904256971A)
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          continue;
        }
      }
      // --- ParallelGateway (Diverging) sid-6B496623_43BB_4F3F_B00E_878B7187A1D3 ---
      if (_tokenState & 8 == 8) {
        // split: activate sid-D6D85EBC_68B6_405B_BFB2_79A6B01A503B and sid-BE199BE7_A0C8_4A0D_BA2D_BB991D00B15E
        _tokenState &= ~uint(8);
        _tokenState |= 48;
        continue;
      }
      // --- sid-D6D85EBC-68B6-405B-BFB2-79A6B01A503B (A) and sid-BE199BE7-A0C8-4A0D-BA2D-BB991D00B15E (B) join at sid-6B0874A1_FB91_4F84_A743_877EDA5CEBA7 ---
      if (_tokenState & 1056 == 1056) {
        // join: sid-F9E85F69_03CB_4DC9_BF4F_D8B466334DA5 and sid-E581D61A_7859_4082_A58D_D7864F98F2E3
        _tokenState &= ~uint(1056);
        _tokenState |= 4096;
        continue;
      }
      // --- sid-6B0874A1_FB91_4F84_A743_877EDA5CEBA7 to sid-875E037A_C651_4762_A161_257334AEAFA7 ---
      if (_tokenState & 4096 == 4096) {
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue;
      }
      // --- sid-22971FC7-11FC-4223-9CF5-8A4D2BB815E6 (B) to sid-875E037A_C651_4762_A161_257334AEAFA7 ---
      if (_tokenState & 256 == 256) {
        _tokenState &= ~uint(256);
        _tokenState |= 8192;
        continue;
      }
      // --- sid-87BBD4F0-2401-4A17-803C-8B904256971A (A) to sid-875E037A_C651_4762_A161_257334AEAFA7 ---
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 8192;
        continue;
      }
      // --- sid-875E037A_C651_4762_A161_257334AEAFA7 to end (sid-32F79484_6A93_405A_BF4E_F1D001B75FC2) ---
      if (_tokenState & 8192 == 8192) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}