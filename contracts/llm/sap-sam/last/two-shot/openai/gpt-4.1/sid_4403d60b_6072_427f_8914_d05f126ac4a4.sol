// test openai/gpt-4.1 - two-shot at 2025-06-12T01:00:00.667Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
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
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }

      // <--- sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C Posudjivanje knjige --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }

      // <--- sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 Vracanje posudjene knjige --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }

      // <--- sid-5E955D68-8136-4843-BDD6-B30855E7FF76 Registriranje_gubitka_knjige --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[7]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }

      // <--- sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 Placanje_vrijednosti_izgubljene_knjige --->
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }

      // <--- sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF Placanje_zakasnine --->
      if (_tokenState & 512 == 512) {
        if (6 == id && msg.sender == participants[11]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break; // is end
        }
      }

      // <--- sid-4459D276-4952-4A89-8151-505064149A15 Rezerviranje_knjige --->
      if (_tokenState & 1024 == 1024) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1024);
          _tokenState |= 0;
          break; // is end
        }
      }

      // <--- Exclusive Gateway sid-0BD99FF5-BA55-4708-86F5-B14B48A1EBAD --->
      if (_tokenState & 2 == 2) {
        // sid-CB38A7B9-D2F0-4775-B69C-612C000B49E9: to sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C (task 2)
        // sid-379C69A3-846E-4A85-BA01-40229996BF92 (conditions & 2 == 2): to sid-4459D276-4952-4A89-8151-505064149A15 (task 7)
        bool taken = false;
        if (conditions & 2 == 2) {
          // to sid-4459D276-4952-4A89-8151-505064149A15
          _tokenState &= ~uint(2);
          _tokenState |= 1024;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sid-CB38A7B9-D2F0-4775-B69C-612C000B49E9
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue;
        }
      }

      // <--- Exclusive Gateway sid-D0F11697-04A1-4881-B8FE-CF78C5620B3E --->
      if (_tokenState & 8 == 8) {
        // sid-E55BF280-7808-44A3-9439-72A9915C7E77: to sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 (task 3)
        // sid-B1A16564-B46A-4953-849F-7178B4F06B17: to sid-5E955D68-8136-4843-BDD6-B30855E7FF76 (task 4)
        // In the model, B1A16564 is for "Knjiga je izgubljena", i.e. if lost, go to 4; otherwise, go to 3.
        // As there are no Solidity <conditionExpression> here, treat as default to sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7.
        // For simplicity, always take the default to sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 unless user adds code.
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }

      // <--- Exclusive Gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D --->
      if (_tokenState & 32 == 32) {
        // sid-1DD1203B-FEFC-47F0-9626-0EB9843D66A1 (conditions & 1 == 1): to sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF (task 6)
        // sid-ABEFAFCE-01E2-4596-AAAB-C1941CF28F37: end
        bool taken = false;
        if (conditions & 1 == 1) {
          // to sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF
          _tokenState &= ~uint(32);
          _tokenState |= 512;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sid-ABEFAFCE-01E2-4596-AAAB-C1941CF28F37: end
          _tokenState &= ~uint(32);
          _tokenState |= 0;
          break;
        }
      }

      // <--- auto transition after sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 (task 3) --->
      // sid-178FA0F4-E987-4E73-8A4C-930A0F1EAA54: sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 -> sid-FD8AD121-C9E4-431A-B51F-38B8A433362D
      // This is handled by above gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D

      // <--- auto transition after sid-5E955D68-8136-4843-BDD6-B30855E7FF76 (task 4) --->
      // sid-7F5F24B7-10C8-47CE-9137-A9EC1B83EB64: sid-5E955D68-8136-4843-BDD6-B30855E7FF76 -> sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 (task 5)
      if (_tokenState & 128 == 128) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }

      // <--- auto transition after sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 (task 5) --->
      // sid-CC2DE741-996A-4B9C-8CB1-FB15E87A8152: sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 -> end
      // Already handled by task 5 above (sets tokenState=0).

      // <--- auto transition after sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF (task 6) --->
      // sid-4EDEFF1C-6836-4592-AB9E-3761A8A605D7: sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF -> end
      // Already handled by task 6 above (sets tokenState=0).

      // <--- auto transition after sid-4459D276-4952-4A89-8151-505064149A15 (task 7) --->
      // sid-AB958157-EDC7-4764-AB74-658D76751316: sid-4459D276-4952-4A89-8151-505064149A15 -> end
      // Already handled by task 7 above (sets tokenState=0).

      break;
    }
    tokenState = _tokenState;
  }
}
