// test openai/gpt-4.1 - two-shot at 2025-06-12T01:39:11.191Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_802c863c_4e9f_4fd4_91a3_c6441402a47b {
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

      // <--- sid-E28CC24B-AC58-49CC-BFFA-0D9EF3EF42BE Aenderungsvorschlag kommunizieren --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }

      // <--- sid-A216BD63-B9E5-49FE-9886-390805B714A1 Vorschlag bearbeiten (Planung) --->
      if (_tokenState & 4 == 4) {
        if (4 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }

      // <--- sid-2BD93612-BF47-4CC1-A8AF-29908F355C95 Vorschlag bearbeiten (Logistik) --->
      if (_tokenState & 8 == 8) {
        if (5 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }

      // <--- sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 Besprechung ansetzen --->
      if (_tokenState & 16 == 16) {
        if (2 == id && msg.sender == participants[3]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }

      // <--- sid-E9C763EC-A03F-4549-A09D-A01F35017123 Information --->
      if (_tokenState & 128 == 128) {
        if (3 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }

      // Parallel split: sid-4615930D-B5C4-4E2F-8387-BCE83BA57BCC (bit 2)
      if (_tokenState & 2 == 2) {
        // <--- auto split parallel gateway --->
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }

      // Parallel join: sid-56A6777D-B521-4865-9CC1-17C802EF46F3 (bit 32)
      if (_tokenState & 32 == 32) {
        // Wait for both Vorschlag bearbeiten (Planung,Logistik)
        // Both task bits must have been consumed, so just continue
        _tokenState &= ~uint(32);
        _tokenState |= 256;
        continue;
      }

      // ExclusiveGateway sid-86B9691F-9696-4885-BDF8-057023274FA3 (bit 256)
      if (_tokenState & 256 == 256) {
        bool taken = false;
        // Condition: conditions & 1 == 1 --> sid-80596EB8-ECB1-42A8-81E1-146F7ACA7469 (end)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          taken = true;
          break;
        }
        // Default: sid-3BAD666F-D1C4-4B47-9048-BF49D361A4B1 (bit 16)
        if (!taken) {
          _tokenState &= ~uint(256);
          _tokenState |= 16;
          continue;
        }
      }

      // ExclusiveGateway sid-981ABBFC-8429-45DD-B1C5-892F35CC72FD (bit 64)
      if (_tokenState & 64 == 64) {
        bool taken = false;
        // Condition: conditions & 2 == 2 --> sid-80596EB8-ECB1-42A8-81E1-146F7ACA7469 (end)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(64);
          _tokenState |= 0;
          taken = true;
          break;
        }
        // Default: sid-E9C763EC-A03F-4549-A09D-A01F35017123 (bit 128)
        if (!taken) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          continue;
        }
      }

      break;
    }
    tokenState = _tokenState;
  }
}
