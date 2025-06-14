// test openai/gpt-4.1 - two-shot at 2025-06-12T01:03:03.560Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_4f03bfac_6870_4951_8bba_a7e16355e589 {
  uint public tokenState = 1;
  address[22] public participants;
  uint public conditions;
  constructor(address[22] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-83CB8E6A-7855-491F-ACE4-5568B085B0AA Fragt Werbeanzeige an
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-2C45C0B5-E718-4493-9F12-EA484F4A9002 Sendet Angebot
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-155E169F-4D9C-43D8-AEBD-812EE590BBAE Fragt Verfugbarkeit an
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-CC8C53B3-1170-4020-887C-0A8DD1833C47 aeußert Anderungswunsch
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 erteilt Auftrag
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // sid-9FD7CD92-886A-45AE-8B0D-11B419B780F8 Absage erteilt
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-582D082F-E935-4D39-8D4F-684C36A51CD9 erteilt Auftrag
      if (_tokenState & 16 == 16) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // sid-B2528142-9302-43B2-AB89-491A0232D7AF erfragt Freigabe
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-5A5EEB58-D5C0-4F44-AD9E-253CA3C6EA66 liefert Grafik
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE Erteilt Freigabe
      if (_tokenState & 4096 == 4096) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 0;
        break; // is end
        }
      }
      // sid-7A4631E5-4035-4BC3-B06D-F0185FA000A3 sendet Anderungswunsch
      if (_tokenState & 8192 == 8192) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-CCEF2766-393D-48DF-9A7E-3B65934F37F4 (Converging Gateway)
      if (_tokenState & 4 == 4) {
        // Only one incoming active at a time, always auto-transition to sid-2C45C0B5-E718-4493-9F12-EA484F4A9002
        _tokenState &= ~uint(4);
        _tokenState |= 2;
        continue;
      }
      // sid-3548761B-AF17-48B9-B2F6-893FFCF1C9E5 (Diverging Exclusive Gateway)
      if (_tokenState & 64 == 64) {
        bool matched = false;
        // sid-8155BF40-71BB-4EE4-B98D-996167FBF914 (default) -> sid-CC8C53B3-1170-4020-887C-0A8DD1833C47
        // sid-0680734C-06D5-4930-ABFB-5786FC41DA8F: conditions & 1 == 1 -> sid-9FD7CD92-886A-45AE-8B0D-11B419B780F8
        // sid-1A86CCB0-5463-4962-A298-79F06E8E84D5: conditions & 2 == 2 -> sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3
        if (!matched && (conditions & 1 == 1)) {
          _tokenState &= ~uint(64);
          _tokenState |= 256;
          matched = true;
        }
        if (!matched && (conditions & 2 == 2)) {
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          matched = true;
        }
        if (!matched) {
          _tokenState &= ~uint(64);
          _tokenState |= 32;
        }
        continue;
      }
      // sid-6D663699-99E8-4687-A101-4E208D28D935 (Converging Gateway)
      if (_tokenState & 2048 == 2048) {
        // 2 incoming: from sid-582D082F-E935-4D39-8D4F-684C36A51CD9 (512) and sid-7A4631E5-4035-4BC3-B06D-F0185FA000A3 (8192)
        // Only one will ever be active, so always auto-transition to sid-5A5EEB58-D5C0-4F44-AD9E-253CA3C6EA66
        _tokenState &= ~uint(2048);
        _tokenState |= 1024;
        continue;
      }
      // sid-60A13C3B-4A44-4D3B-8604-D291100B2679 (Diverging Exclusive Gateway)
      if (_tokenState & 1024 == 1024) {
        bool matched = false;
        // sid-8EDB9FAA-3B3C-407F-B0E5-93246B74F6AE: Grafik ok -> sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE
        // sid-C19CC792-BCCB-4DDA-8CEB-6EE98CDD8336: conditions & 4 == 4 -> sid-7A4631E5-4035-4BC3-B06D-F0185FA000A3
        if (!matched && (conditions & 4 == 4)) {
          _tokenState &= ~uint(1024);
          _tokenState |= 8192;
          matched = true;
        }
        if (!matched) {
          _tokenState &= ~uint(1024);
          _tokenState |= 4096;
        }
        continue;
      }
      // sid-E4A33DD3-615B-471A-8A40-D3637E6F1CE9 (auto) from sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 to sid-155E169F-4D9C-43D8-AEBD-812EE590BBAE
      // handled in sid-ACFEBAF1-ED9D-4EEC-82A4-E17E3BABF1A3 enact above (token 128 to 8)
      // sid-DE365EB8-3DAC-4439-BC3E-1C0A76A49CEC (auto) from sid-155E169F-4D9C-43D8-AEBD-812EE590BBAE to sid-582D082F-E935-4D39-8D4F-684C36A51CD9
      if (_tokenState & 16 == 16) {
        _tokenState &= ~uint(16);
        _tokenState |= 512;
        continue;
      }
      // sid-EB8BD96D-ABD7-49A8-A92C-0FF76965EE0C (auto) from sid-B2528142-9302-43B2-AB89-491A0232D7AF to sid-60A13C3B-4A44-4D3B-8604-D291100B2679
      if (_tokenState & 512 == 512) {
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        continue;
      }
      // sid-F624A523-F392-420E-AA19-437168829321 (auto) from sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE to end
      // handled in sid-7AEEA2EE-8510-42E5-9332-EE09CBBC71AE enact above (token 4096 to 0)
      // sid-377511A5-57DD-465E-8BD2-08B3FB5BF7B0 (auto) from sid-9FD7CD92-886A-45AE-8B0D-11B419B780F8 to end
      // handled in sid-9FD7CD92-886A-45AE-8B0D-11B419B780F8 enact above (token 256 to 0)
      // sid-3A77523A-429C-4B52-84AA-0941E4010EF0 (auto) from sid-CC8C53B3-1170-4020-887C-0A8DD1833C47 to sid-CCEF2766-393D-48DF-9A7E-3B65934F37F4
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 4;
        continue;
      }
      // sid-0C7AAA37-FA87-45CA-84C8-BDB141BBE371 (auto) from sid-2C45C0B5-E718-4493-9F12-EA484F4A9002 to sid-3548761B-AF17-48B9-B2F6-893FFCF1C9E5
      if (_tokenState & 2 == 2) {
        _tokenState &= ~uint(2);
        _tokenState |= 64;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
