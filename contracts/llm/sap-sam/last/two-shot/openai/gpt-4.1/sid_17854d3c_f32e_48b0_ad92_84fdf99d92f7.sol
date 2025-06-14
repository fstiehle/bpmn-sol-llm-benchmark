// test openai/gpt-4.1 - two-shot at 2025-06-12T00:10:13.907Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
  uint public tokenState = 1;
  address[20] public participants;
  uint public conditions;
  constructor(address[20] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-90E1E0CC-4697-4AF5-98CB-B0DDA7792ED4 Wohnung
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // sid-47422B2D-5D26-41DB-B127-0615FC7D32FD Gespraech
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // sid-E4488B23-225F-450A-A883-49E9EB7FD866 Besichtigung
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        // Exclusive Gateway sid-93FF4FC7-EBE9-4C07-94D0-AAC8765CB259
        // sequenceFlow sid-B665971C-69BD-4A94-B1DC-F12D3EF7ECC9: conditions & 1 == 1 -> Wohnung angenommen
        // default sid-39E37424-9D33-4636-AD83-E809327490B9 -> Wohnung abgelehnt
        if (conditions & 1 == 1) {
          _tokenState |= 512;
        } else {
          _tokenState |= 16;
        }
        _tokenState &= ~uint(0); // just for clarity
        id = 0;
        continue;
        }
      }
      // sid-A8A5AA32-6339-48DB-A399-FE69B576C63A Wohnung abgelehnt
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        // Join sid-6090D503-E4DA-47F0-94DB-DBDC23DF6AD1, two incoming: from startEvent(1) and from Wohnung abgelehnt(16)
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // sid-4398A998-AB97-4E2E-82AE-44E22B35EC42 Wohnung angenommen
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-F278FFA9-D781-428C-9061-460B36BB8DC8 Kredit
      if (_tokenState & 32 == 32) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        // Exclusive Gateway sid-111BD5DA-2DDD-48DB-9352-EB21C708A036
        // sequenceFlow sid-2BE3E56D-08FE-40B6-8BBB-5B3493CF33C8: conditions & 2 == 2 -> Kredit geben
        // default sid-DBA346C0-F957-40EA-A587-B84E121885C2 -> Kein Kredit
        if (conditions & 2 == 2) {
          _tokenState |= 256;
        } else {
          _tokenState |= 1024;
        }
        _tokenState &= ~uint(0);
        id = 0;
        continue;
        }
      }
      // sid-905ABD45-2BED-4426-84B1-6A5AA93CCBF1 Kredit geben
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-93BAFAD4-8005-4C6C-8D2E-0717C32C60D7 Unterschreiben des Vertrags
      if (_tokenState & 2048 == 2048) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // sid-EE223F01-9025-4791-8371-FA708DA6D6AF Eintragung
      if (_tokenState & 4096 == 4096) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState = 0;
        break;
        }
      }
      // sid-5831EEC3-4682-46D2-A619-5E6920AE6F1F Kein Kredit
      if (_tokenState & 1024 == 1024) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState = 0;
        break;
        }
      }
      // Join sid-6090D503-E4DA-47F0-94DB-DBDC23DF6AD1 (tokenState & 129 == 129): 1 (after startEvent) and 128 (after Wohnung abgelehnt)
      // After both, activate Wohnung (2)
      if ((_tokenState & 129) == 129) {
        _tokenState &= ~uint(129);
        _tokenState |= 2;
        continue;
      }
      // After Wohnung abgelehnt (16) alone, set join bit
      if ((_tokenState & 16) == 16 && (_tokenState & 128) == 0) {
        _tokenState |= 128;
        continue;
      }
      // After startEvent (1) alone, set join bit
      if ((_tokenState & 1) == 1 && (_tokenState & 128) == 0) {
        _tokenState |= 128;
        continue;
      }
      // After Wohnung angenommen (512), activate Kredit (32)
      if ((_tokenState & 512) == 512 && (_tokenState & 32) == 0) {
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}