// test openai/gpt-4.1 - one-shot at 2025-06-12T00:07:23.799Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_b8594f54_92d0_42b7_9d23_1e4f63e67f8f {
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
      // Task 1: sid_26CB3185_CCC5_456F_B2ED_69FD7984012C (Slanje problema)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code for Slanje problema
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // Task 2: sid_F46217C9_37D7_4CDC_9818_CFCE7C3F78F5 (Dobijanje detaljnijeg opisa problema)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[3]) {
          // custom code for Dobijanje detaljnijeg opisa problema
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // Gateway sid_C4A16CD0_061C_432C_BE4E_C9EEC4C84C3C [Operater zna resenje?]
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // [DA] to sid_A28F253A_3BCF_4582_ACD3_195B68766D90 (task 3)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          didTransition = true;
        }
        if (!didTransition) {
          // to sid_7626F4C0_564C_4869_A6D7_2540D55E5360 (task 4)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          didTransition = true;
        }
        if (didTransition) continue;
      }
      // Task 3: sid_A28F253A_3BCF_4582_ACD3_195B68766D90 (Slanje resenja)
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[5]) {
          // custom code for Slanje resenja (Operater->Klijent)
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // end event
        }
      }
      // Task 4: sid_7626F4C0_564C_4869_A6D7_2540D55E5360 (Pitanje podrske prvog nivoa)
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code for Pitanje podrske prvog nivoa
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // Gateway sid_396483CB_FA0F_455F_94CE_5F948725DA9E [Podrska prvog nivoa zna da resi?]
      if (_tokenState & 32 == 32) {
        bool didTransition2 = false;
        if (conditions & 2 == 2) {
          // to sid_D68FC3ED_F557_4118_ADE0_BEFEE27D4FD2 (task 6)
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          didTransition2 = true;
        }
        if (!didTransition2) {
          // [DA] to sid_F61AC55B_43D7_4034_9F4E_CB28D2A06362 (task 5)
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          didTransition2 = true;
        }
        if (didTransition2) continue;
      }
      // Task 5: sid_F61AC55B_43D7_4034_9F4E_CB28D2A06362 (Slanje resenja)
      if (_tokenState & 64 == 64) {
        if (id == 5 && msg.sender == participants[9]) {
          // custom code for Slanje resenja (Podrska I nivoa->Operater)
          _tokenState &= ~uint(64);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }
      // Task 6: sid_D68FC3ED_F557_4118_ADE0_BEFEE27D4FD2 (Pitanje podrske II nivoa)
      if (_tokenState & 128 == 128) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code for Pitanje podrske II nivoa
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // Task 7: sid_0D7629F1_CA9A_490A_9642_3AE48DAF9070 (Slanje resenja)
      if (_tokenState & 256 == 256) {
        if (id == 7 && msg.sender == participants[13]) {
          // custom code for Slanje resenja (Podrska II nivoa->Podrska I nivoa)
          _tokenState &= ~uint(256);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}