// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:15:43.377Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_one_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
  uint public tokenState = 1; // Start with the StartEvent active
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
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // StartEvent sid-5CF0A66B-C0A6-4470-B1BF-EA2502830FCC
        // Auto transition to first task
        _tokenState &= ~uint(1);
        _tokenState |= 2; // Activate sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5
        continue;
      }
      if (_tokenState & 2 == 2) {
        // ChoreographyTask sid-8D30ABAD-3927-4172-9CE2-67F00C02E2C5 (Zapłata za towar, TaskID: 1)
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Activate sid-6AC65B84-234D-4B9A-960C-8998833592B4 (Gateway)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 4 == 4) {
        // ExclusiveGateway sid-6AC65B84-234D-4B9A-960C-8998833592B4 (Czy zapłata się powiodła?)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Activate sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC
          continue;
        } else {
          _tokenState &= ~uint(4);
          _tokenState |= 64; // Activate sid-515B0616-5E5B-4286-9E99-2E9787D6D7AA (EndEvent - Transakcja nieudana)
          continue;
        }
      }
      if (_tokenState & 8 == 8) {
        // ChoreographyTask sid-F4EB5C5A-7A7E-4B28-8573-394A547027FC (Realizacja zamówienia, TaskID: 2)
        if (2 == id && msg.sender == participants[3]) {
          _tokenState &= ~uint(8);
          _tokenState |= 16; // Activate sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1
          id = 0;
          continue;
        }
      }
      if (_tokenState & 16 == 16) {
        // ChoreographyTask sid-17C76E1F-DF07-41C5-AB96-67878F5FDAB1 (Aktualizacja danych na stronie, TaskID: 4)
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(16);
          _tokenState |= 32; // Activate sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A
          id = 0;
          continue;
        }
      }
      if (_tokenState & 32 == 32) {
        // ChoreographyTask sid-C8D7C501-EE1C-4921-80FC-FAB3063BD75A (Przekazanie towaru kurierowi, TaskID: 3)
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(32);
          _tokenState |= 128; // Activate sid-884E65EB-CD77-45E9-A251-AC64A7163CD5
          id = 0;
          continue;
        }
      }
      if (_tokenState & 128 == 128) {
        // ChoreographyTask sid-884E65EB-CD77-45E9-A251-AC64A7163CD5 (Wysłanie informacji o przybyciu kuriera, TaskID: 5)
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(128);
          _tokenState |= 256; // Activate sid-E22F1585-4A90-4126-BFD4-6FCF093EE0D8 (Gateway)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 256 == 256) {
        // ExclusiveGateway sid-E22F1585-4A90-4126-BFD4-6FCF093EE0D8 (Czy dostarczono przesyłkę?)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(256);
          _tokenState |= 512; // Activate sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5
          continue;
        } else {
          _tokenState &= ~uint(256);
          _tokenState |= 64; // Activate sid-515B0616-5E5B-4286-9E99-2E9787D6D7AA (EndEvent)
          continue;
        }
      }
      if (_tokenState & 512 == 512) {
        // ChoreographyTask sid-CE1ACF04-6606-4523-8B8D-AB0FBEAED0B5 (Przekazanie do punktu odbiorczego, TaskID: 6)
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(512);
          _tokenState |= 64; // Activate sid-515B0616-5E5B-4286-9E99-2E9787D6D7AA (EndEvent)
          id = 0;
          continue;
        }
      }
      if (_tokenState & 64 == 64) {
        // EndEvent sid-515B0616-5E5B-4286-9E99-2E9787D6D7AA (Transakcja nieudana)
        _tokenState = 0; // Terminate process
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}