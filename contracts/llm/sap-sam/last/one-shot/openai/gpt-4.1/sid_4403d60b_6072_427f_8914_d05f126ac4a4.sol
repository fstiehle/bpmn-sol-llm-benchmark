// test openai/gpt-4.1 - one-shot at 2025-06-11T23:38:16.256Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
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
      // <--- sid-A6663D7A-4D36-4E24-B402-3B6D0CD89938 Pronalazenje dostupnog primjerka knjige --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for Pronalaženje dostupnog primjerka knjige here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // <--- sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C Posudjivanje knjige --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for Posuđivanje knjige here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // <--- sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 Vracanje posudjene knjige --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for Vraćanje posuđene knjige here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // <--- sid-5E955D68-8136-4843-BDD6-B30855E7FF76 Registriranje_gubitka_knjige --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for Registriranje_gubitka_knjige here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // <--- sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 Placanje_vrijednosti_izgubljene_knjige --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for Placanje_vrijednosti_izgubljene_knjige here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break; // end
        }
      }
      // <--- sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF Placanje_zakasnine --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for Placanje_zakasnine here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // end
        }
      }
      // <--- sid-4459D276-4952-4A89-8151-505064149A15 Rezerviranje_knjige --->
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for Rezerviranje_knjige here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // end
        }
      }
      // <--- Gateway sid-0BD99FF5-BA55-4708-86F5-B14B48A1EBAD --->
      if (_tokenState & 4 == 4) {
        // sid-CB38A7B9-D2F0-4775-B69C-612C000B49E9 (default) to sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C; sid-379C69A3-846E-4A85-BA01-40229996BF92 (cond: conditions & 2 == 2) to sid-4459D276-4952-4A89-8151-505064149A15
        if (conditions & 2 == 2) {
          // <--- Gateway exclusive: conditions & 2 == 2 --->
          _tokenState &= ~uint(4);
          _tokenState |= 256;
          continue;
        } else {
          // <--- Gateway exclusive: default --->
          _tokenState &= ~uint(4);
          _tokenState |= 2;
          continue;
        }
      }
      // <--- Gateway sid-D0F11697-04A1-4881-B8FE-CF78C5620B3E --->
      if (_tokenState & 32 == 32) {
        // sid-E55BF280-7808-44A3-9439-72A9915C7E77 to sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7; sid-B1A16564-B46A-4953-849F-7178B4F06B17 (Knjiga je izgubljena) to sid-5E955D68-8136-4843-BDD6-B30855E7FF76
        // This gateway's split is controlled by model - no conditions, so based on which path is desired, you must call the appropriate next task.
        // By default, let us activate the "Vraćanje posuđene knjige" (id 3) path if no explicit conditions (since "Knjiga je izgubljena" is a labeled sequenceFlow but not a condition in Solidity).
        // For automation, we'll activate both and require the user to enact the relevant task.
        // However, BPMN model only allows one, so let's activate both and allow either task to be enacted.
        _tokenState &= ~uint(32);
        _tokenState |= 8 | 16;
        continue;
      }
      // <--- Gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D --->
      if (_tokenState & 512 == 512) {
        // sid-1DD1203B-FEFC-47F0-9626-0EB9843D66A1 (cond: conditions & 1 == 1) to sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF; sid-ABEFAFCE-01E2-4596-AAAB-C1941CF28F37 (default) to end
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(512);
          _tokenState |= 128;
          continue;
        } else {
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break;
        }
      }
      // <--- Gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D activation from sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 --->
      if (_tokenState & 8 == 8) {
        // After Vraćanje posuđene knjige, go to gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D
        _tokenState &= ~uint(8);
        _tokenState |= 512;
        continue;
      }
      // <--- Gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D activation from end --->
      if (_tokenState & 1024 == 1024) {
        // end event, process terminates
        _tokenState = 0;
        break;
      }
      // <--- sid-5E955D68-8136-4843-BDD6-B30855E7FF76 Registriranje_gubitka_knjige handover to sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 --->
      if (_tokenState & 16 == 16) {
        // After Registriranje_gubitka_knjige, go to sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}