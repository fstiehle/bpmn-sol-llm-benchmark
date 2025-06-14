// test openai/gpt-4.1 - one-shot at 2025-06-12T00:06:19.245Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;

  constructor(address[12] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  // taskID mapping:
  // 1: sid_8D30ABAD_3927_4172_9CE2_67F00C02E2C5
  // 2: sid_F4EB5C5A_7A7E_4B28_8573_394A547027FC
  // 3: sid_C8D7C501_EE1C_4921_80FC_FAB3063BD75A
  // 4: sid_17C76E1F_DF07_41C5_AB96_67878F5FDAB1
  // 5: sid_884E65EB_CD77_45E9_A251_AC64A7163CD5
  // 6: sid_CE1ACF04_6606_4523_8B8D_AB0FBEAED0B5

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {

      // sid_8D30ABAD_3927_4172_9CE2_67F00C02E2C5: Zaplata za towar
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- custom code for Zaplata za towar here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }

      // Exclusive Gateway sid_6AC65B84_234D_4B9A_960C_8998833592B4 ("Czy zaplata sie powiodla?")
      if (_tokenState & 2 == 2) {
        // two outgoing: sid_BB6FE361_9133_4D1A_9E79_9A8F3CA22B76 (default), sid_77FDB120_DEF9_483C_9488_6B67E8C58EEF (cond)
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // to sid_F4EB5C5A_7A7E_4B28_8573_394A547027FC (task 2)
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default to end event (Transakcja nieudana, process ends)
          _tokenState = 0;
          break;
        }
      }

      // sid_F4EB5C5A_7A7E_4B28_8573_394A547027FC: Realizacja zamowienia_przeslanie informacji o przesylce
      if (_tokenState & 4 == 4) {
        if (id == 2 && msg.sender == participants[3]) {
          // <--- custom code for Realizacja zamowienia here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue;
        }
      }

      // sid_17C76E1F_DF07_41C5_AB96_67878F5FDAB1: Aktualizacja danych na stronie
      if (_tokenState & 8 == 8) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- custom code for Aktualizacja danych na stronie here --->
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }

      // sid_C8D7C501_EE1C_4921_80FC_FAB3063BD75A: Przekazanie towaru kurierowi
      if (_tokenState & 16 == 16) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- custom code for Przekazanie towaru kurierowi here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }

      // sid_884E65EB_CD77_45E9_A251_AC64A7163CD5: Wyslanie informacji o przybyciu kuriera...
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- custom code for Wyslanie informacji o przybyciu kuriera here --->
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }

      // Exclusive Gateway sid_E22F1585_4A90_4126_BFD4_6FCF093EE0D8 ("Czy dostarczono przesylke?")
      if (_tokenState & 64 == 64) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // to sid_CE1ACF04_6606_4523_8B8D_AB0FBEAED0B5 (task 6)
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          transitioned = true;
          continue;
        }
        if (!transitioned) {
          // default to end event (Transakcja nieudana, process ends)
          _tokenState = 0;
          break;
        }
      }

      // sid_CE1ACF04_6606_4523_8B8D_AB0FBEAED0B5: Przekazanie do punktu odbiorczego
      if (_tokenState & 128 == 128) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- custom code for Przekazanie do punktu odbiorczego here --->
          _tokenState &= ~uint(128);
          // end event afterwards
          _tokenState = 0;
          break;
        }
      }

      // No more transitions possible
      break;
    }
    tokenState = _tokenState;
  }
}