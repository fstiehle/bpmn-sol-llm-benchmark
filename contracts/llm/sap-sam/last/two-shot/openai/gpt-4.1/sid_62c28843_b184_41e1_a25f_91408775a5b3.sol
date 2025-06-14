// test openai/gpt-4.1 - two-shot at 2025-06-12T01:09:18.389Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_62c28843_b184_41e1_a25f_91408775a5b3 {
  uint public tokenState = 1;
  address[30] public participants;
  uint public conditions;
  constructor(address[30] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {

      // <--- sid-48DA2ADE-5B7F-4D68-A3B3-7271C36DD57E An_Warteschlange_1_anstellen --->
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }

      // <--- sid-D82F561F-771D-43BC-B4FB-D165CF04BB6F An_Warteschlange_3_anstellen --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }

      // <--- sid-5397633C-B91B-41F6-88CB-F6A756F949F0 An_Warteschlange_2_anstellen --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }

      // <--- sid-F0099824-993E-449E-AFF1-0F315FFD9BCC Teller_bereitstellen --->
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[7]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }

      // <--- sid-278CD03B-5B0D-4A61-9156-3D00C6D77487 Teller_befuellen --->
      if (_tokenState & 256 == 256) {
        if (5 == id && msg.sender == participants[9]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue; 
        }
      }

      // <--- sid-CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63 Teller_auf_die_Theke_stellen --->
      if (_tokenState & 512 == 512) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(512);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }

      // <--- sid-AA331F9C-61AD-43DF-B9FA-336EBE95FB64 Teller_von_der_Theke_nehmen --->
      if (_tokenState & 8192 == 8192) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8192);
        _tokenState |= 16384;
        id = 0;
        continue; 
        }
      }

      // <--- sid-720465BA-FA50-4AA1-B159-6170FAE0CD5C Zur_Kassen_begeben --->
      if (_tokenState & 16384 == 16384) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        id = 0;
        continue; 
        }
      }

      // <--- sid-85FB1251-02A7-451C-ABF2-A9A4656E44A4 Beitrag_ermitteln --->
      if (_tokenState & 32768 == 32768) {
        if (9 == id && msg.sender == participants[17]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }

      // <--- sid-C888D461-1BB6-440F-98C5-D69DC47FFBDB Forderungen_bezahlen --->
      if (_tokenState & 65536 == 65536) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(65536);
        _tokenState |= 131072;
        id = 0;
        continue; 
        }
      }

      // <--- sid-97DF2393-0947-4F00-B69A-FF07EAAD6932 Wechselgeld_ausgeben --->
      if (_tokenState & 2097152 == 2097152) {
        if (11 == id && msg.sender == participants[21]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2097152);
        _tokenState |= 4194304;
        id = 0;
        continue; 
        }
      }

      // <--- sid-841B139E-9C36-4A4A-8765-6617A2F7A244 Einzahlungsbetrag_einkassieren_1 --->
      if (_tokenState & 262144 == 262144) {
        if (12 == id && msg.sender == participants[23]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 2097152;
        id = 0;
        continue; 
        }
      }

      // <--- sid-9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095 Einzahlungsbetrag_einkassieren_2 --->
      if (_tokenState & 524288 == 524288) {
        if (13 == id && msg.sender == participants[25]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(524288);
        _tokenState |= 4194304;
        id = 0;
        continue; 
        }
      }

      // <--- sid-25B3FD8F-B874-4A33-B9EA-48CC7F623957 Essensplatz_suchen --->
      if (_tokenState & 4194304 == 4194304) {
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 8388608;
        id = 0;
        continue; 
        }
      }

      // <--- sid-0305710C-7E67-4291-9EF5-833B510DA300 Essen_verzehren --->
      if (_tokenState & 8388608 == 8388608) {
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8388608);
        _tokenState |= 0;
        break; // is end
        }
      }

      // <--- Gateway: sid-0E664DC1-043E-430E-8307-65C3D148E742 --->
      if (_tokenState & 1 == 1) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // to sid-48DA2ADE-5B7F-4D68-A3B3-7271C36DD57E
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          didTransition = true;
        }
        if (!didTransition && conditions & 2 == 2) {
          // to sid-D82F561F-771D-43BC-B4FB-D165CF04BB6F
          _tokenState &= ~uint(1);
          _tokenState |= 4;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-5397633C-B91B-41F6-88CB-F6A756F949F0
          _tokenState &= ~uint(1);
          _tokenState |= 8;
          didTransition = true;
        }
        if (didTransition) {
          continue;
        }
      }

      // <--- Gateway: sid-9B21D9F4-2000-4DCB-845B-DFF3162C6CF9 (converging) --->
      if (_tokenState & 224 == 224) { // 32+64+128
        // all incoming done, go to sid-F0099824-993E-449E-AFF1-0F315FFD9BCC
        _tokenState &= ~uint(224);
        _tokenState |= 16;
        continue;
      }

      // <--- Gateway: sid-A000BD59-3499-4992-9CD6-05D98317125F --->
      if (_tokenState & 131072 == 131072) {
        bool didTransition = false;
        if (conditions & 4 == 4) {
          // to sid-9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095
          _tokenState &= ~uint(131072);
          _tokenState |= 524288;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-841B139E-9C36-4A4A-8765-6617A2F7A244
          _tokenState &= ~uint(131072);
          _tokenState |= 262144;
          didTransition = true;
        }
        if (didTransition) {
          continue;
        }
      }

      // <--- Gateway: sid-63C8A276-02AF-4B9B-9B26-A7156119589D (converging) --->
      if (_tokenState & 4718592 == 4718592) { // 2097152+2621440
        // all incoming done, go to sid-25B3FD8F-B874-4A33-B9EA-48CC7F623957
        _tokenState &= ~uint(4718592);
        _tokenState |= 4194304;
        continue;
      }

      // <---  sid-F0099824-993E-449E-AFF1-0F315FFD9BCC -> sid-278CD03B-5B0D-4A61-9156-3D00C6D77487 (auto) --->
      if (_tokenState & 16 == 16) {
        // already handled by task above
      }

      // <---  sid-278CD03B-5B0D-4A61-9156-3D00C6D77487 -> sid-CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63 (auto) --->
      if (_tokenState & 256 == 256) {
        // already handled by task above
      }

      // <---  sid-CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63 -> sid-AA331F9C-61AD-43DF-B9FA-336EBE95FB64 (auto) --->
      if (_tokenState & 512 == 512) {
        // already handled by task above
      }

      // <---  sid-AA331F9C-61AD-43DF-B9FA-336EBE95FB64 -> sid-720465BA-FA50-4AA1-B159-6170FAE0CD5C (auto) --->
      if (_tokenState & 8192 == 8192) {
        // already handled by task above
      }

      // <---  sid-720465BA-FA50-4AA1-B159-6170FAE0CD5C -> sid-85FB1251-02A7-451C-ABF2-A9A4656E44A4 (auto) --->
      if (_tokenState & 16384 == 16384) {
        // already handled by task above
      }

      // <---  sid-85FB1251-02A7-451C-ABF2-A9A4656E44A4 -> sid-C888D461-1BB6-440F-98C5-D69DC47FFBDB (auto) --->
      if (_tokenState & 32768 == 32768) {
        // already handled by task above
      }

      // <---  sid-C888D461-1BB6-440F-98C5-D69DC47FFBDB -> sid-A000BD59-3499-4992-9CD6-05D98317125F (auto) --->
      if (_tokenState & 65536 == 65536) {
        // already handled by task above
      }

      // <---  sid-841B139E-9C36-4A4A-8765-6617A2F7A244 -> sid-97DF2393-0947-4F00-B69A-FF07EAAD6932 (auto) --->
      if (_tokenState & 262144 == 262144) {
        // already handled by task above
      }

      // <---  sid-97DF2393-0947-4F00-B69A-FF07EAAD6932 -> sid-63C8A276-02AF-4B9B-9B26-A7156119589D (auto) --->
      if (_tokenState & 2097152 == 2097152) {
        // already handled by task above
      }

      // <---  sid-9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095 -> sid-63C8A276-02AF-4B9B-9B26-A7156119589D (auto) --->
      if (_tokenState & 524288 == 524288) {
        // already handled by task above
      }

      // <---  sid-25B3FD8F-B874-4A33-B9EA-48CC7F623957 -> sid-0305710C-7E67-4291-9EF5-833B510DA300 (auto) --->
      if (_tokenState & 4194304 == 4194304) {
        // already handled by task above
      }

      // <---  sid-0305710C-7E67-4291-9EF5-833B510DA300 -> END (auto) --->
      if (_tokenState & 8388608 == 8388608) {
        // already handled by task above
      }

      break;
    }
    tokenState = _tokenState;
  }
}