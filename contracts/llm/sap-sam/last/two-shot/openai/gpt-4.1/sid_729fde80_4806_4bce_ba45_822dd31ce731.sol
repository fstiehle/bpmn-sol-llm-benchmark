// test openai/gpt-4.1 - two-shot at 2025-06-12T01:14:03.070Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_729fde80_4806_4bce_ba45_822dd31ce731 {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;
  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      // --- sid-2C952487-1897-4703-BD14-C00233174A01 Bewerbungsunterlagen senden & bestaetigen
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // token at Gateway sid-21D2131C_ACF9_43B0_AFA9_110E5D90F751 (bit 2)
          id = 0;
          continue;
        }
      }
      // --- sid-AFF80938-EACE-4704-B168-6FD41D6291B8 Fehlende Unterlagen anfordern & senden
      if (_tokenState & 16 == 16) {
        if (id == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 4; // token at Gateway sid-4D98FF7B_B8C8_4409_B650_BD9453EAA0F0 (bit 4)
          id = 0;
          continue;
        }
      }
      // --- sid-B48DD1CF-E421-40C5-A189-47AA16B2A21B Zusage senden
      if (_tokenState & 64 == 64) {
        if (id == 3 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128; // token at Gateway sid-8AEE2A64_582E_4A38_8AEA_236E11A012DC (bit 128)
          id = 0;
          continue;
        }
      }
      // --- sid-93A5BA57-9EB7-44C2-A54E-FF1D2FB83C26 Absage senden
      if (_tokenState & 256 == 256) {
        if (id == 4 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 128; // token at Gateway sid-8AEE2A64_582E_4A38_8AEA_236E11A012DC (bit 128)
          id = 0;
          continue;
        }
      }
      // --- Gateway sid-21D2131C_ACF9_43B0_AFA9_110E5D90F751 (Exclusive, Diverging)
      if (_tokenState & 2 == 2) {
        bool taken = false;
        if (!taken && (conditions & 1 == 1)) {
          // sequenceFlow sid-40BD8468_DBEE_48B1_9703_936BED73C66F to sid-AFF80938_EACE_4704_B168_6FD41D6291B8
          _tokenState &= ~uint(2);
          _tokenState |= 16;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sequenceFlow sid-AA34A234_94BE_4BCE_8867_EA34EFF58250 to sid-4D98FF7B_B8C8_4409_B650_BD9453EAA0F0
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          taken = true;
          continue;
        }
      }
      // --- Gateway sid-4D98FF7B_B8C8_4409_B650_BD9453EAA0F0 (Exclusive, Converging)
      if (_tokenState & 4 == 4) {
        // both incoming, just forward (auto)
        _tokenState &= ~uint(4);
        _tokenState |= 8; // token at sid-2D7C485D_0A1F_445E_BC1A_F3FE4B32D074 (bit 8)
        continue;
      }
      // --- Gateway sid-2D7C485D_0A1F_445E_BC1A_F3FE4B32D074 (Exclusive, Diverging)
      if (_tokenState & 8 == 8) {
        bool taken = false;
        if (!taken && (conditions & 2 == 2)) {
          // sequenceFlow sid-2C297A37_CD8A_4982_90CA_9ADF85A6A8C9 to sid-B48DD1CF_E421_40C5_A189_47AA16B2A21B
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          taken = true;
          continue;
        }
        if (!taken) {
          // default sequenceFlow sid-C7842385_3F9A_45BE_8A08_FD086E55C5B9 to sid-93A5BA57_9EB7_44C2_A54E_FF1D2FB83C26
          _tokenState &= ~uint(8);
          _tokenState |= 256;
          taken = true;
          continue;
        }
      }
      // --- Gateway sid-8AEE2A64_582E_4A38_8AEA_236E11A012DC (Exclusive, Converging)
      if (_tokenState & 128 == 128) {
        // both incoming, just forward (auto)
        _tokenState &= ~uint(128);
        _tokenState |= 0; // EndEvent reached (sid-311CD016_2526_4B47_A537_3EB036AF32BF)
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}