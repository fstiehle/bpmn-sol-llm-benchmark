// test openai/gpt-4.1 - one-shot at 2025-06-11T23:59:08.360Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
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
      // <--- sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C Mitteilung_ueber_Rueckrufware_senden --->
      if (_tokenState & 2 == 2) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 Mitteilung_ueber_Rueckrufware_senden --->
      if (_tokenState & 8 == 8) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 Beurteilung_der_Rueckrufware_senden --->
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-73AF27ED-C1B7-4550-960B-49B0B084123B Informationen_ueber_Rueckrufaktion_senden --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // <--- sid-2414D848-3DBE-43B9-BE5F-7411E200C56C Rueckrufware_liefern --->
      if (_tokenState & 2048 == 2048) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 0;
        break;
        }
      }
      // <--- sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 Auftrag_zum_Ruecktransport_senden --->
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-99D74F7C_9F2D_4C11_A8F2_0402AA255A2A --->
      if (_tokenState & 1 == 1) {
        // "Ware noch in Zentrallager" default flow
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        continue;
      }
      // <--- ExclusiveGateway sid-99D74F7C_9F2D_4C11_A8F2_0402AA255A2A conditions & 1 == 1 --->
      // (handled above as default only, since default is C3876E25-FE25-4165-8A24-39AAB5437443)
      // <--- ExclusiveGateway sid-125B8229_750A_4737_8AF3_F6C1E4C357F1 --->
      if (_tokenState & 32 == 32) {
        _tokenState &= ~uint(32);
        _tokenState |= 1024;
        continue;
      }
      // <--- ParallelGateway sid-89C0972A_DCBD_4A02_974F_4F6497F7C91F --->
      if (_tokenState & 4 == 4) {
        // parallel split: outgoing 8,16,64
        _tokenState &= ~uint(4);
        _tokenState |= (8|16|64);
        continue;
      }
      // <--- ParallelGateway sid-BA0DCA8E_7741_428C_A564_536900613B64 --->
      if (_tokenState & (128|256|512) == (128|256|512)) {
        // join: all arrived
        _tokenState &= ~uint(128|256|512);
        _tokenState |= 32;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}