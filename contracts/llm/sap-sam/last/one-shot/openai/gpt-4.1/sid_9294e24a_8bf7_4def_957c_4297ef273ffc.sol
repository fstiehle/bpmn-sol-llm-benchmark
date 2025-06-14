// test openai/gpt-4.1 - one-shot at 2025-06-11T23:58:24.684Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9294e24a_8bf7_4def_957c_4297ef273ffc {
  uint public tokenState = 1;
  address[16] public participants;
  uint public conditions;

  constructor(address[16] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  // taskID mapping:
  // 1: sid_76C63599_3DD6_4043_A2B8_0BB8FBBD2AAF  Anfrage verschicken (initiating: 0)
  // 2: sid_85270B8F_7310_43BE_943A_7C865FF23F69  Angebot erstellen (initiating: 2)
  // 3: sid_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF  Anderungswunsch fur das Angebot (initiating: 4)
  // 4: sid_3CAAC027_DED0_416B_A8BB_98D1A0B7239B  Angebot ablehnen (initiating: 6)
  // 5: sid_C019EE0F_1EB1_42AC_98D4_F0710AD56207  Angebot annehmen (initiating: 9)
  // 6: sid_4D1701E5_F5D9_46C7_BE19_68F0F3CDAF33  Verfugbarkeit abfragen (initiating: 10)
  // 7: sid_FDECA237_E60D_49F9_BD7F_ED9E9D02AD37  Grafik erstellen lassen (initiating: 12)
  // 8: sid_30D67DEB_801C_49C7_9CEE_A5B3898418D4  Freigabe einholen (initiating: 14)

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid_76C63599_3DD6_4043_A2B8_0BB8FBBD2AAF: Anfrage verschicken
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // custom code here
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid_85270B8F_7310_43BE_943A_7C865FF23F69: Angebot erstellen
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // custom code here
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          id = 0;
          continue;
        }
      }
      // sid_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF: Anderungswunsch fur das Angebot
      if (_tokenState & 8 == 8) {
        if (id == 3 && msg.sender == participants[4]) {
          // custom code here
          _tokenState &= ~uint(8);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // sid_3CAAC027_DED0_416B_A8BB_98D1A0B7239B: Angebot ablehnen
      if (_tokenState & 16 == 16) {
        if (id == 4 && msg.sender == participants[6]) {
          // custom code here
          _tokenState &= ~uint(16);
          _tokenState |= 0;
          break;
        }
      }
      // sid_C019EE0F_1EB1_42AC_98D4_F0710AD56207: Angebot annehmen
      if (_tokenState & 32 == 32) {
        if (id == 5 && msg.sender == participants[9]) {
          // custom code here
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      // sid_4D1701E5_F5D9_46C7_BE19_68F0F3CDAF33: Verfugbarkeit abfragen
      if (_tokenState & 64 == 64) {
        if (id == 6 && msg.sender == participants[10]) {
          // custom code here
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // sid_FDECA237_E60D_49F9_BD7F_ED9E9D02AD37: Grafik erstellen lassen
      if (_tokenState & 128 == 128) {
        if (id == 7 && msg.sender == participants[12]) {
          // custom code here
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // sid_30D67DEB_801C_49C7_9CEE_A5B3898418D4: Freigabe einholen
      if (_tokenState & 256 == 256) {
        if (id == 8 && msg.sender == participants[14]) {
          // custom code here
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break;
        }
      }
      // Exclusive Gateway sid_7306C3CA_B68C_4E2C_AE18_70D2676B6B80 (converging)
      if (_tokenState & 4 == 4) {
        // Two possible incoming flows: from sid_76C63599_3DD6_4043_A2B8_0BB8FBBD2AAF and sid_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF
        // Default outgoing: sid_85270B8F_7310_43BE_943A_7C865FF23F69
        // We just transition to the task, so nothing to do here - handled by previous logic.
        // However, transition from multiple incoming handled by setting the same bit.
        // Thus, nothing is needed.
      }
      // Exclusive Gateway sid_BEF0BD94_9DBA_4EF0_9E8C_6E24B8C79E1F (diverging)
      // Bit: 8 (for gateway state)
      if (_tokenState & 8 == 8) {
        bool didAny = false;
        // sid_2BEF8C6A_D54D_4101_9CDF_93295537A5A7: to sid_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF
        // No explicit condition, it's the default. But model says it's the default.
        // sid_3B1DEDDD_800A_42A5_8652_D50FA2CD32D0: to sid_3CAAC027_DED0_416B_A8BB_98D1A0B7239B
        // condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
          didAny = true;
          continue;
        }
        // sid_4CDC1EF2_F3FD_4287_8796_30935302B6CB: to sid_C019EE0F_1EB1_42AC_98D4_F0710AD56207
        // condition: conditions & 2 == 2
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          didAny = true;
          continue;
        }
        // default: sid_2BEF8C6A_D54D_4101_9CDF_93295537A5A7 (to sid_E74407BF_FE6F_4217_A9AA_34EF09DD9CCF)
        if (!didAny) {
          _tokenState &= ~uint(8);
          _tokenState |= 8;
          continue;
        }
      }
      // No explicit parallel gateways in this model (all splits are sequential).
      // All transitions are handled above.
      break;
    }
    tokenState = _tokenState;
  }
}