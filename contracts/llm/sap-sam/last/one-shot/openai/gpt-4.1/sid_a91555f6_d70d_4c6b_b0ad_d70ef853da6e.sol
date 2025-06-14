// test openai/gpt-4.1 - one-shot at 2025-06-12T00:04:07.805Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;
  constructor(address[36] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    uint i12_counter = 0;
    while(_tokenState != 0) {
      // <--- sid-C239469D-57BD-4C4D-B124-5EF5ACD3DE1C Auftrag_einleiten --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // <--- sid-C04696F9-6DC0-4F24-BCE8-9CC8DBB4C003 Auftragsbestaetigung_senden --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-DCF5CEC1-0C21-4BE8-BA02-C70522B864AA Auftragsstornierung_senden --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-24D1978A-2852-4BBB-946C-68E17547519C Forschungen_einleiten --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 16384;
        id = 0;
        continue;
        }
      }
      // <--- sid-B7D3EC60-EAEE-4594-A016-5B46D4359125 Herstellungsprozess_einleiten --->
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- sid-48A887EF-89AB-404B-93A3-AA3401E32F92 Auftrag_und_Kapazitaeten_ueberpruefen --->
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // <--- sid-DFFAB4E3-594A-472C-92DE-14806C638BAF Rechtliche_Aspekte_ueberpruefen --->
      if (_tokenState & 4096 == 4096) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- sid-98A8C0FD-93D5-4AE6-A018-DDAFDEB9479A Qualitaetskontrolle_durchfuehren --->
      if (_tokenState & 128 == 128) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 262144;
        id = 0;
        continue;
        }
      }
      // <--- sid-5334FE47-DD51-49CA-8176-4B9DF7415F4E Ursachen_analysieren --->
      if (_tokenState & 4194304 == 4194304) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // <--- sid-BC5EFE3A-707F-47D6-8227-DE4753477F70 Probe_ausliefern --->
      if (_tokenState & 262144 == 262144) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // <--- sid-02ACAA68-B584-43E2-B00F-E051ABD75073 Qualitaetskontrolle_durchfuehren --->
      if (_tokenState & 2048 == 2048) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 1048576;
        id = 0;
        continue;
        }
      }
      // <--- sid-7B533088-1A10-47EB-AB27-710D74341063 Anzahl_ueberpruefen --->
      if (_tokenState & 1048576 == 1048576) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1048576);
        i12_counter += 1;
        if (i12_counter < 3) {
          _tokenState |= 8192;
        } else {
          _tokenState |= 67108864;
        }
        id = 0;
        continue;
        }
      }
      // <--- sid-BB48F939-F07D-4C27-B96B-02424B7776D3 Reklamation_senden --->
      if (_tokenState & 8192 == 8192) {
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 4194304;
        id = 0;
        continue;
        }
      }
      // <--- sid-CA197233-FA4B-497C-B86F-5C1B36EA22DF Auftragsstornierung_senden --->
      if (_tokenState & 67108864 == 67108864) {
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(67108864);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-4F2F3D5F-4677-417E-B2CB-99D5469A3092 Qualitaetsbestaetigung_senden --->
      if (_tokenState & 33554432 == 33554432) {
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(33554432);
        _tokenState |= 1073741824;
        id = 0;
        continue;
        }
      }
      // <--- sid-CEC360BB-AC3B-49EF-8400-590588EB1323 Biopharmazeutika_ausliefern --->
      if (_tokenState & 1073741824 == 1073741824) {
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1073741824);
        _tokenState |= 8589934592;
        id = 0;
        continue;
        }
      }
      // <--- sid-41418591-E182-4CB8-A250-13AE413DB96F Eingang_bestaetigen --->
      if (_tokenState & 8589934592 == 8589934592) {
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8589934592);
        _tokenState |= 34359738368;
        id = 0;
        continue;
        }
      }
      // <--- sid-70F253A9-42F4-4B2F-97D8-08A905A14818 Rechnung_erstellen --->
      if (_tokenState & 34359738368 == 34359738368) {
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(34359738368);
        _tokenState |= 0;
        break;
        }
      }
      // Exclusive Gateway sid-2856C72E-CF6C-470D-81AE-3DCA9E40482E (bit 8)
      if (_tokenState & 8 == 8) {
        bool taken = false;
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(8);
          _tokenState |= 16;
        }
        continue;
      }
      // Exclusive Gateway sid-7C3C0919-B7D2-4893-9A79-122FF408E54B (bit 16384)
      if (_tokenState & 16384 == 16384) {
        bool taken = false;
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(16384);
          _tokenState |= 512;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(16384);
          _tokenState |= 16;
        }
        continue;
      }
      // Exclusive Gateway sid-8B1BAB42-BA01-48FE-A5A8-D45CEFB25103 (bit 32)
      if (_tokenState & 32 == 32) {
        bool taken = false;
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(32);
          _tokenState |= 16;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(32);
          _tokenState |= 16;
        }
        continue;
      }
      // Exclusive Gateway sid-69BEE4E4-AB00-41AF-AF6C-9F4045F94E56 (bit 4096)
      if (_tokenState & 4096 == 4096) {
        bool taken = false;
        if (conditions & 4 == 4) {
          _tokenState &= ~uint(4096);
          _tokenState |= 16;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8;
        }
        continue;
      }
      // Exclusive Gateway sid-B216E792-FFDE-4AEC-AF35-317D250205B0 (bit 262144)
      if (_tokenState & 262144 == 262144) {
        bool taken = false;
        if (conditions & 8 == 8) {
          _tokenState &= ~uint(262144);
          _tokenState |= 4194304;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(262144);
          _tokenState |= 2048;
        }
        continue;
      }
      // Exclusive Gateway sid-22214891-5F47-4B8B-ADDC-06E82BD4FCA1 (bit 1048576)
      if (_tokenState & 1048576 == 1048576) {
        bool taken = false;
        if (conditions & 16 == 16) {
          _tokenState &= ~uint(1048576);
          _tokenState |= 33554432;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(1048576);
          _tokenState |= 8192;
        }
        continue;
      }
      // Exclusive Gateway sid-69509D2C-03B5-4175-8E2D-C5FE3C7C76FB (bit 8192)
      if (_tokenState & 8192 == 8192) {
        bool taken = false;
        if (conditions & 32 == 32) {
          _tokenState &= ~uint(8192);
          _tokenState |= 67108864;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(8192);
          _tokenState |= 8192;
        }
        continue;
      }
      // Exclusive Gateway sid-F00E71CC-D4FF-4FB3-9D47-0FC6ED349AAA (bit 4194304)
      if (_tokenState & 4194304 == 4194304) {
        bool taken = false;
        if (conditions & 8 == 8) {
          _tokenState &= ~uint(4194304);
          _tokenState |= 4194304;
          taken = true;
        }
        if (!taken) {
          _tokenState &= ~uint(4194304);
          _tokenState |= 4194304;
        }
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}