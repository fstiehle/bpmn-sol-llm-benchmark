// test openai/gpt-4.1 - two-shot at 2025-06-12T01:55:34.518Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
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
      // sid-109D8857-8D2A-43D2-A758-1A5F8400F151 Anfrage stellen
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B Angebot vorlegen
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A Absage erteilen
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-70C82863-4B96-40A8-B83F-4FD8E5766088 Anderungswuensche mitteilen
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2 Auftrag erteilen
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 Verfugbarkeit anfragen (MultiInstanceParallel)
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      // sid-08D1DFF5-E462-4E22-876D-382B8314DAA1 Grafik erstellen lassen
      if (_tokenState & 128 == 128) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      // sid-61791D53-81A8-4C6E-B762-852EF1CDEAEB Freigabe holen
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      // ExclusiveGateway sid-E6766DB1-5AF0-4544-A121-3E521E74C396 (Converging)
      if (_tokenState & 18 == 18) {
        // Only auto transition to sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B
        _tokenState &= ~uint(18);
        _tokenState |= 2;
        continue;
      }
      // ExclusiveGateway sid-A95EFF98-3C75-4DB7-A9EB-06FECE663C1F (Diverging)
      if (_tokenState & 4 == 4) {
        bool matched = false;
        if (conditions & 1 == 1) {
          // sid-64B36C55-9AF0-4045-897A-BF76FE4EF5EA -> sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          matched = true;
        }
        if (!matched && conditions & 2 == 2) {
          // sid-3F473E46-B0E5-4680-83CD-27AAEF690842 -> sid-70C82863-4B96-40A8-B83F-4FD8E5766088
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          matched = true;
        }
        if (!matched) {
          // default sid-64383499-AFEB-4B85-BB2A-A61E23A91AB2 -> sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2
          _tokenState &= ~uint(4);
          _tokenState |= 32;
        }
        continue;
      }
      // sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 is MultiInstanceParallel, but with two outputs in the BPMN, so after execution, only one path is followed (sid-08D1DFF5-E462-4E22-876D-382B8314DAA1)
      // All other transitions are direct.
      break;
    }
    tokenState = _tokenState;
  }
}
