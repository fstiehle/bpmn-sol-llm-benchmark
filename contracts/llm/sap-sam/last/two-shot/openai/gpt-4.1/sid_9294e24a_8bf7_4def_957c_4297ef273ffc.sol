// test openai/gpt-4.1 - two-shot at 2025-06-12T01:52:16.090Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9294e24a_8bf7_4def_957c_4297ef273ffc {
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
      if (_tokenState & 1 == 1) {
        // <--- sid-76C63599_3DD6_4043_A2B8_0BB8FBBD2AAF Anfrage_verschicken --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-85270B8F_7310_43BE_943A_7C865FF23F69 Angebot_erstellen --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-E74407BF_FE6F_4217_A9AA_34EF09DD9CCF Aenderungswunsch_fuer_das_Angebot --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-3CAAC027_DED0_416B_A8BB_98D1A0B7239B Angebot_ablehnen --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-C019EE0F_1EB1_42AC_98D4_F0710AD56207 Angebot_annehmen --->
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-4D1701E5_F5D9_46C7_BE19_68F0F3CDAF33 Verfuegbarkeit_abfragen --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-FDECA237_E60D_49F9_BD7F_ED9E9D02AD37 Grafik_erstellen_lassen --->
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-30D67DEB_801C_49C7_9CEE_A5B3898418D4 Freigabe_einholen --->
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 0;
        break; // is end
        }
      }
      // --- Gateways & auto transitions ---
      if (_tokenState & 2 == 2) {
        // <--- sid-7306C3CA_B68C_4E2C_AE18_70D2676B6B80 converging exclusiveGateway
        // Has two inputs: 1 (from Anfrage_verschicken), 16 (from Aenderungswunsch_fuer_das_Angebot)
        // Output: 4 (Angebot_erstellen)
        // This is a join, so wait for either 1 or 16 to have fired, but since we clear the bit for the previous, 
        // it's safe to just activate output.
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        continue;
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-BEF0BD94_9DBA_4EF0_9E8C_6E24B8C79E1F diverging exclusiveGateway
        // Incoming: 4 (from Angebot_erstellen)
        // Outgoings: 
        //   - 16 (E74407BF_FE6F_4217_A9AA_34EF09DD9CCF), condition: default
        //   - 32 (3CAAC027_DED0_416B_A8BB_98D1A0B7239B), condition: conditions & 1 == 1
        //   - 64 (C019EE0F_1EB1_42AC_98D4_F0710AD56207), condition: conditions & 2 == 2
        bool didBranch = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          didBranch = true;
        }
        if (!didBranch && (conditions & 2 == 2)) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          didBranch = true;
        }
        if (!didBranch) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        }
        continue;
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-4D1701E5_F5D9_46C7_BE19_68F0F3CDAF33 Verfuegbarkeit_abfragen
        // This is a direct transition to next task
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-FDECA237_E60D_49F9_BD7F_ED9E9D02AD37 Grafik_erstellen_lassen
        // This is a direct transition to next task
        _tokenState &= ~uint(512);
        _tokenState |= 2048;
        continue;
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-30D67DEB_801C_49C7_9CEE_A5B3898418D4 Freigabe_einholen
        // This is a direct transition to next task
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
