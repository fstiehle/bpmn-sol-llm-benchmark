// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T19:16:17.055Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_two_shot_sid_b7b36685_2b15_4bc0_8853_27012da21b61 {
  uint public tokenState = 1;
  address[25] public participants;
  uint public conditions;
  constructor(address[25] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-F70D8A73-10FB-44F9-9331-D9AB914BFE28 interacted by homepage --->
        if (1 == id && msg.sender == participants[0]) {
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F8BB6627-A6C1-4E25-BDF7-D7A978D2B2D5 login --->
        if (2 == id && msg.sender == participants[2]) {
        _tokenState &= ~uint(2);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        if (conditions & 1 == 1) {
          // <--- conditional transition to sid-BFF58372-6AE9-4CC7-BDBF-E88E97950CF8 --->
          _tokenState &= ~uint(16);
          _tokenState |= 8;
          continue; 
        } else {
          // <--- default transition to sid-929FD353-B390-4631-820A-150410142285 --->
          _tokenState &= ~uint(16);
          _tokenState |= 4;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-929FD353-B390-4631-820A-150410142285 give staff access --->
        if (3 == id && msg.sender == participants[4]) {
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-BFF58372-6AE9-4CC7-BDBF-E88E97950CF8 give normal access --->
        if (4 == id && msg.sender == participants[6]) {
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-771ED2AA-3718-491D-A68D-C931063229EA eventBasedGateway --->
        _tokenState &= ~uint(32);
        _tokenState |= 16 | 32 | 64 | 4096;
        continue; 
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-988EA705-FAE3-41B4-B9DF-E71DA7A1E317 recommend car --->
        if (5 == id && msg.sender == participants[16]) {
        _tokenState &= ~uint(16);
        _tokenState |= 65536;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-2ECC1D34-1057-46B0-BF25-ABAAD55AFEFF access FAQ page --->
        if (6 == id && msg.sender == participants[18]) {
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-055127F3-55F4-4144-AF6E-B9C6016A0441 check return car list --->
        if (7 == id && msg.sender == participants[12]) {
        _tokenState &= ~uint(64);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-08B2CDC1-2AA7-4DB6-B1D3-10AF5751E52A edit personal information --->
        if (13 == id && msg.sender == participants[22]) {
        _tokenState &= ~uint(4096);
        _tokenState |= 8192;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 65536 == 65536) {
        // <--- sid-7E766AF1-82D6-492C-9F5F-82E19BEA2E4B search car --->
        if (8 == id && msg.sender == participants[14]) {
        _tokenState &= ~uint(65536);
        _tokenState |= 256;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-70E19713-D1EA-4E40-A6AA-3E0484338C20 manage users --->
        if (9 == id && msg.sender == participants[10]) {
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-F1FBD02F-9DDE-417E-B558-E15BD64B2ED6 access contact us page --->
        if (10 == id && msg.sender == participants[20]) {
        _tokenState &= ~uint(256);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2048 == 2048) {
        // <--- sid-EF340667-79A9-4721-856B-A58CFCAC23E4 notify changes are updated --->
        if (12 == id && msg.sender == participants[24]) {
        _tokenState &= ~uint(2048);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8192 == 8192) {
        // <--- sid-A399A183-B390-4276-94F5-128CA0FD2733 access contact us page --->
        if (11 == id && msg.sender == participants[20]) {
        _tokenState &= ~uint(8192);
        _tokenState |= 1024;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-A399A183-B390-4276-94F5-128CA0FD2733 ... --->
        // ... other code ...
      }
      if (_tokenState & 1024 == 1024) {
        // <--- sid-0F7B0F2A-347E-44F9-A210-B32B8CC2E0CB eventBasedGateway --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        continue; 
      }
      if (_tokenState & 4096 == 4096) {
        // <--- sid-0BE830A0-AD6C-48D3-BE6D-7E8E4D1852EE Car is returned --->
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
