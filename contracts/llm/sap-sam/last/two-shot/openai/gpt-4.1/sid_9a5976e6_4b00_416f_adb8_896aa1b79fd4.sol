// test openai/gpt-4.1 - two-shot at 2025-06-12T01:53:14.649Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
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
      // <--- sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C Mitteilung ueber Rueckrufware senden --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C here --->
        _tokenState &= ~uint(1);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 Mitteilung ueber Rueckrufware senden --->
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 here --->
        _tokenState &= ~uint(2);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 Beurteilung der Rueckrufware senden --->
      if (_tokenState & 4 == 4) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-73AF27ED-C1B7-4550-960B-49B0B084123B Informationen ueber Rueckrufaktion senden --->
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-73AF27ED-C1B7-4550-960B-49B0B084123B here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-2414D848-3DBE-43B9-BE5F-7411E200C56C Rueckrufware liefern --->
      if (_tokenState & 16 == 16) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-2414D848-3DBE-43B9-BE5F-7411E200C56C here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 Auftrag zum Ruecktransport senden --->
      if (_tokenState & 32 == 32) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 here --->
        _tokenState &= ~uint(32);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-99D74F7C_9F2D_4C11_A8F2_0402AA255A2A --->
      if (_tokenState & 256 == 256) {
        bool didTransition = false;
        // condition: conditions & 1 == 1
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(256);
          _tokenState |= 14;
          didTransition = true;
        }
        // default flow
        if (!didTransition) {
          _tokenState &= ~uint(256);
          _tokenState |= 1;
          didTransition = true;
        }
        if (didTransition) {
          continue;
        }
      }
      // <--- ParallelGateway sid-89C0972A_DCBD_4A02_974F_4F6497F7C91F --->
      if (_tokenState & 14 == 14) {
        _tokenState &= ~uint(14);
        _tokenState |= 14;
        continue;
      }
      // <--- ParallelGateway sid-BA0DCA8E_7741_428C_A564_536900613B64 --->
      if (_tokenState & 112 == 112) {
        _tokenState &= ~uint(112);
        _tokenState |= 256;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
