// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:14:42.337Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_2cf50df2_68c4_477e_b837_0e10d6d199d8 {
  uint public tokenState = 1;
  address[18] public participants;
  constructor(address[18] memory _participants) {
    participants = _participants;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-0F2070B8-DDC3-4F7D-9648-D753C5258B1E Artikel auswaehlen --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-DA50E053-B8DC-4AE4-AE8C-B1EDDFC09F7F Pruefung Artikel vorrätig --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-4E91FEDA-E6C0-4F29-908A-58E7228A290D Anschrift eingeben --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-1C93F643-B734-443F-91B2-3C975BD930BB Daten ueberpruefen --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-22A01FBB-1AA7-4730-B91B-EF9F65C9FD61 Bestellung absenden --->
        if (5 == id && msg.sender == participants[8]) {
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-2B1F6198-4A74-449D-8BF5-AFADBE91BB8F Rechnung senden --->
        if (6 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-C4535344-53A0-4C08-8F27-335E8D18DCB6 Rechnung bezahlen --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-4492D3D8-A38C-4BFE-878E-5E997A891AE3 Artikel versenden --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-FF598238-0855-40B9-BEB2-6788E45C12C0 Artikel erhalten --->
        if (9 == id && msg.sender == participants[16]) {
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
