// test openai/gpt-4.1 - one-shot at 2025-06-12T00:02:06.975Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
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
      // <--- sid-109D8857-8D2A-43D2-A758-1A5F8400F151 Anfrage_stellen --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // <--- sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B Angebot_vorlegen --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 4; // activate exclusive gateway sid-A95EFF98_3C75_4DB7_A9EB_06FECE663C1F
          id = 0;
          continue;
        }
      }
      // <--- sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A Absage_erteilen --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break;
        }
      }
      // <--- sid-70C82863-4B96-40A8-B83F-4FD8E5766088 Anderungswuensche_mitteilen --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32; // go to converging gateway
          id = 0;
          continue;
        }
      }
      // <--- sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2 Auftrag_erteilen --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128; // to parallel multiinstance
          id = 0;
          continue;
        }
      }
      // <--- sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 Verfugbarkeit_anfragen --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- sid-08D1DFF5-E462-4E22-876D-382B8314DAA1 Grafik_erstellen_lassen --->
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // <--- sid-61791D53-81A8-4C6E-B762-852EF1CDEAEB Freigabe_holen --->
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(512);
          _tokenState |= 0;
          break;
        }
      }
      // <--- EXCLUSIVE GATEWAY sid-A95EFF98-3C75-4DB7-A9EB-06FECE663C1F --->
      if (_tokenState & 4 == 4) {
        bool transition = false;
        // condition: conditions & 1 == 1 --> to Absage erteilen (sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A, id=3, bit=8)
        if (!transition && (conditions & 1 == 1)) {
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          transition = true;
          continue;
        }
        // condition: conditions & 2 == 2 --> to Anderungswuensche_mitteilen (sid-70C82863-4B96-40A8-B83F-4FD8E5766088, id=4, bit=16)
        if (!transition && (conditions & 2 == 2)) {
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          transition = true;
          continue;
        }
        // default: to Auftrag_erteilen (sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2, id=5, bit=64)
        if (!transition) {
          _tokenState &= ~uint(4);
          _tokenState |= 64;
          continue;
        }
      }
      // <--- EXCLUSIVE GATEWAY sid-E6766DB1-5AF0-4544-A121-3E521E74C396 --->
      if (_tokenState & 32 == 32) {
        // only one outgoing, so auto to Angebot_vorlegen (sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B, id=2, bit=2)
        _tokenState &= ~uint(32);
        _tokenState |= 2;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}