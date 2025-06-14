// test openai/gpt-4.1 - two-shot at 2025-06-12T01:57:54.707Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
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
    while(_tokenState != 0) {
      // <--- sid-C239469D-57BD-4C4D-B124-5EF5ACD3DE1C Auftrag einleiten --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-48A887EF-89AB-404B-93A3-AA3401E32F92 Auftrag und Kapazitaeten ueberpruefen --->
      if (_tokenState & 2 == 2) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // <--- sid-DFFAB4E3-594A-472C-92DE-14806C638BAF Rechtliche Aspekte ueberpruefen --->
      if (_tokenState & 4 == 4) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue;
        }
      }
      // <--- sid-C04696F9-6DC0-4F24-BCE8-9CC8DBB4C003 Auftragsbestaetigung senden --->
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-24D1978A-2852-4BBB-946C-68E17547519C Forschungen einleiten --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-DCF5CEC1-0C21-4BE8-BA02-C70522B864AA Auftragsstornierung senden --->
      if (_tokenState & 64 == 64) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-B7D3EC60-EAEE-4594-A016-5B46D4359125 Herstellungsprozess einleiten --->
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-98A8C0FD-93D5-4AE6-A018-DDAFDEB9479A Qualitaetskontrolle durchfuehren --->
      if (_tokenState & 256 == 256) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // <--- sid-BC5EFE3A-707F-47D6-8227-DE4753477F70 Probe ausliefern --->
      if (_tokenState & 2048 == 2048) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // <--- sid-02ACAA68-B584-43E2-B00F-E051ABD75073 Qualitaetskontrolle durchfuehren --->
      if (_tokenState & 4096 == 4096) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // <--- sid-7B533088-1A10-47EB-AB27-710D74341063 Anzahl ueberpruefen --->
      if (_tokenState & 32768 == 32768) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue;
        }
      }
      // <--- sid-BB48F939-F07D-4C27-B96B-02424B7776D3 Reklamation senden --->
      if (_tokenState & 131072 == 131072) {
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(131072);
        _tokenState |= 262144;
        id = 0;
        continue;
        }
      }
      // <--- sid-CA197233-FA4B-497C-B86F-5C1B36EA22DF Auftragsstornierung senden --->
      if (_tokenState & 1048576 == 1048576) {
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1048576);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-4F2F3D5F-4677-417E-B2CB-99D5469A3092 Qualitaetsbestaetigung senden --->
      if (_tokenState & 524288 == 524288) {
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(524288);
        _tokenState |= 2097152;
        id = 0;
        continue;
        }
      }
      // <--- sid-CEC360BB-AC3B-49EF-8400-590588EB1323 Biopharmazeutika ausliefern --->
      if (_tokenState & 2097152 == 2097152) {
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2097152);
        _tokenState |= 4194304;
        id = 0;
        continue;
        }
      }
      // <--- sid-41418591-E182-4CB8-A250-13AE413DB96F Eingang bestaetigen --->
      if (_tokenState & 4194304 == 4194304) {
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 8388608;
        id = 0;
        continue;
        }
      }
      // <--- sid-70F253A9-42F4-4B2F-97D8-08A905A14818 Rechnung erstellen --->
      if (_tokenState & 8388608 == 8388608) {
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8388608);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-5334FE47-DD51-49CA-8176-4B9DF7415F4E Ursachen analysieren --->
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-2856C72E-CF6C-470D-81AE-3DCA9E40482E --->
      if (_tokenState & 8 == 8) {
        bool didTransition = false;
        if (!didTransition && (conditions & 1 == 1)) {
          // conditions & 1 == 1
          _tokenState &= ~uint(8);
          _tokenState |= 8;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-CE7C4258-0AAB-4ED7-BB5C-224E23BDA383
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-69BEE4E4-AB00-41AF-AF6C-9F4045F94E56 --->
      if (_tokenState & 4 == 4) {
        bool didTransition = false;
        if (!didTransition && (conditions & 4 == 4)) {
          // conditions & 4 == 4
          _tokenState &= ~uint(4);
          _tokenState |= 64;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-61244D6E-8BB0-40A9-B342-8EA3338FCD2C
          _tokenState &= ~uint(4);
          _tokenState |= 4;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-7C3C0919-B7D2-4893-9A79-122FF408E54B --->
      if (_tokenState & 32 == 32) {
        bool didTransition = false;
        if (!didTransition && (conditions & 2 == 2)) {
          // conditions & 2 == 2
          _tokenState &= ~uint(32);
          _tokenState |= 128;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-CC58DAF3-D686-419D-BBF3-6FF396692C9C
          _tokenState &= ~uint(32);
          _tokenState |= 64;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-B216E792-FFDE-4AEC-AF35-317D250205B0 --->
      if (_tokenState & 512 == 512) {
        bool didTransition = false;
        if (!didTransition && (conditions & 8 == 8)) {
          // conditions & 8 == 8
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-9D6871EF-BB70-4664-BB85-94AD621085B5
          _tokenState &= ~uint(512);
          _tokenState |= 2048;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-22214891-5F47-4B8B-ADDC-06E82BD4FCA1 --->
      if (_tokenState & 8192 == 8192) {
        bool didTransition = false;
        if (!didTransition && (conditions & 16 == 16)) {
          // conditions & 16 == 16
          _tokenState &= ~uint(8192);
          _tokenState |= 524288;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-D61227A6-A138-4421-A0D8-E44FFAEDBCC2
          _tokenState &= ~uint(8192);
          _tokenState |= 32768;
          continue;
        }
      }
      // <--- ExclusiveGateway sid-69509D2C-03B5-4175-8E2D-C5FE3C7C76FB --->
      if (_tokenState & 65536 == 65536) {
        bool didTransition = false;
        if (!didTransition && (conditions & 32 == 32)) {
          // conditions & 32 == 32
          _tokenState &= ~uint(65536);
          _tokenState |= 1048576;
          didTransition = true;
          continue;
        }
        if (!didTransition) {
          // default: sid-BDE68C95-85EE-4BCB-BAE2-21B51F9A9943
          _tokenState &= ~uint(65536);
          _tokenState |= 131072;
          continue;
        }
      }
      // <--- F00E71CC-D4FF-4FB3-9D47-0FC6ED349AAA (converging exclusive) --->
      if (_tokenState & 262144 == 262144) {
        // always enable sid-69E228D1-00F8-4CC7-8C95-D5B9DCD0D8E0
        _tokenState &= ~uint(262144);
        _tokenState |= 1024;
        continue;
      }
      // <--- 8B1BAB42-BA01-48FE-A5A8-D45CEFB25103 (converging exclusive) --->
      if (_tokenState & 64 == 64) {
        // always enable sid-34F796B0-275D-4310-B223-2BB68BA4EC11
        _tokenState &= ~uint(64);
        _tokenState |= 64;
        continue;
      }
      // <--- 35217493-4799-4124-BD24-4F9402FE5268 (converging exclusive) --->
      if (_tokenState & 128 == 128) {
        // always enable sid-E4BEBC1A-ADF5-43DA-9B16-5EDC4F8FB86B
        _tokenState &= ~uint(128);
        _tokenState |= 128;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}