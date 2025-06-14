// test openai/gpt-4.1 - two-shot at 2025-06-12T02:01:07.437Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
  uint public tokenState = 1;
  address[12] public participants;
  uint public conditions;
  constructor(address[12] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5 Zaplata za towar --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC Realizacja zamowienia__przeslanie informacji o przesylce --->
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1 Aktualizacja danych na stronie --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A Przekazanie towaru kurierowi --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-884E65EB-CD77-45E9-A251-AC64A7163CD5 Wyslanie informacji o przybyciu kuriera w danym dniu o danej godzinie__proba doreczenia przesylki --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 512 == 512) {
        // <--- sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5 Przekazanie do punktu odbiorczego --->
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway sid-6AC65B84_234D_4B9A_960C_8998833592B4 Czy zaplata sie powiodla?
      if (_tokenState & 2 == 2) {
        bool transitioned = false;
        if (conditions & 1 == 1) {
          // <--- sid-77FDB120-DEF9-483C-9488-6B67E8C58EEF --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          transitioned = true;
          continue;
        }
        // default sid-BB6FE361_9133_4D1A_9E79_9A8F3CA22B76
        if (!transitioned) {
          _tokenState &= ~uint(2);
          _tokenState |= 0;
          break; // is end
        }
      }
      // Exclusive Gateway sid-E22F1585_4A90_4126_BFD4_6FCF093EE0D8 Czy dostarczono przesylke?
      if (_tokenState & 128 == 128) {
        bool transitioned = false;
        if (conditions & 2 == 2) {
          // <--- sid-89A000EB_3478_4155_AFA4_28C97A0822CE --->
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          transitioned = true;
          continue;
        }
        // default sid-030E621D_46E6_41E6_8F7B_4385EED8D122
        if (!transitioned) {
          _tokenState &= ~uint(128);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 8 == 8) {
        // <---  auto transition  --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
