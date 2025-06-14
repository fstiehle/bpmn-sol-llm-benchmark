// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T19:02:06.918Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
  uint public tokenState = 1;
  address[37] public participants;
  uint public conditions;
  
  constructor(address[37] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while (_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid_23f57f48_3ab3_463a_9257_258dcb93ccdc Order with requiered delivery date --->
        if (id == 1 && msg.sender == participants[0]) {
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 2 == 2) {
        // Handle parallel gateway
        // <--- parallel gateway sid_8a856537_7ac4_4586_bc1a_66678ec8b506 --->
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      
      if (_tokenState & 4 == 4) {
        // <--- sid_87411925_6acb_4399_9fdf_ab3a02b97185 Confirms order --->
        if (id == 2 && msg.sender == participants[2]) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8 == 8) {
        // <--- sid_75d866d6_6a0b_49e9_8f37_c1542a0fcf44 Confirms order with updated project date --->
        if (id == 3 && msg.sender == participants[4]) {
          _tokenState &= ~uint(8);
          _tokenState |= 64;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 96 == 96) { // 32 | 64
        // Handle parallel gateway
        // <--- parallel gateway sid_e9bba1f8_0485_423f_85ba_5e0636746fd3 --->
        _tokenState &= ~uint(96);
        _tokenState |= 128;
        continue;
      }
      
      if (_tokenState & 128 == 128) {
        // Handle parallel gateway
        // <--- parallel gateway sid_c8749f03_ea4f_4134_a956_99029ba412c0 --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        continue;
      }
      
      if (_tokenState & 256 == 256) {
        // <--- sid_79f7c5ca_0bb9_412d_82b7_243830f73242 Request payment details --->
        if (id == 4 && msg.sender == participants[6]) {
          _tokenState &= ~uint(256);
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 512 == 512) {
        // <--- sid_b069e27a_d33b_46b4_93d2_8368a4696004 Make payment --->
        if (id == 6 && msg.sender == participants[12]) {
          _tokenState &= ~uint(512);
          _tokenState |= 1024;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 1024 == 1024) {
        // Handle exclusive gateway
        // <--- exclusive gateway sid_6f6bbe1d_edba_459b_9ff8_096332a86f9d --->
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        } else {
          _tokenState &= ~uint(1024);
          _tokenState |= 2048;
          continue;
        }
      }
      
      if (_tokenState & 2048 == 2048) {
        // Handle parallel gateway
        // <--- parallel gateway sid_59fd9696_33ba_4281_b983_16c678d60c29 --->
        _tokenState &= ~uint(2048);
        _tokenState |= 4096;
        continue;
      }
      
      if (_tokenState & 4096 == 4096) {
        // <--- sid_0b7409ca_9c11_41b3_9c5f_af9e4e6f4e4d Announces problems with the materials --->
        if (id == 18 && msg.sender == participants[28]) {
          _tokenState &= ~uint(4096);
          _tokenState |= 8192;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 8192 == 8192) {
        // Handle exclusive gateway
        // <--- exclusive gateway sid_f5e250e9_8224_4c08_96cc_5b213fe8e878 --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          continue;
        } else {
          _tokenState &= ~uint(8192);
          _tokenState |= 16384;
          continue;
        }
      }
      
      if (_tokenState & 16384 == 16384) {
        // Handle exclusive gateway
        // <--- exclusive gateway sid_7d650b82_5367_4ca4_b00c_eece35c1bedd --->
        // Transition to end state
        _tokenState &= ~uint(16384);
        _tokenState |= 32768;
        continue;
      }
      
      if (_tokenState & 32768 == 32768) {
        // <--- sid_61585682_6a88_4404_a770_8142c2b15acc Sends the results from the diagnostics --->
        if (id == 19 && msg.sender == participants[36]) {
          _tokenState &= ~uint(32768);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 128 == 128) {
        // <--- sid_b6fc6638_517a_4341_8d5d_766673e6c7bc Request payment details --->
        if (id == 5 && msg.sender == participants[11]) {
          _tokenState &= ~uint(128);
          _tokenState |= 1536;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 1536 == 1536) {
        // <--- sid_c711548a_c1da_42c7_b342_7ce7fc79369c Receive payment method --->
        if (id == 7 && msg.sender == participants[14]) {
          _tokenState &= ~uint(1536);
          _tokenState |= 3072;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 3072 == 3072) {
        // <--- sid_bbe04049_2a5b_4133_bb93_4d6c82a139ac Sends shipment --->
        if (id == 9 && msg.sender == participants[16]) {
          _tokenState &= ~uint(3072);
          _tokenState |= 6144;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 6144 == 6144) {
        // <--- sid_0b70b2dc_a7c5_471a_ae6c_7aa0f4d2b20b Sends the results from the parts check --->
        if (id == 17 && msg.sender == participants[34]) {
          _tokenState &= ~uint(6144);
          _tokenState |= 12288;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 12288 == 12288) {
        // <--- sid_05b03332_15f8_4230_9323_5eb426f59d83 Sends the result from the parts check --->
        if (id == 14 && msg.sender == participants[34]) {
          _tokenState &= ~uint(12288);
          _tokenState |= 24576;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 24576 == 24576) {
        // Handle parallel gateway
        // <--- parallel gateway sid_59fd9696_33ba_4281_b983_16c678d60c29 --->
        _tokenState &= ~uint(24576);
        _tokenState |= 49152;
        continue;
      }
      
      if (_tokenState & 49152 == 49152) {
        // <--- sid_0133df4d_71c7_454b_bd30_edc3326b6bf1 Sends notification first batch --->
        if (id == 10 && msg.sender == participants[18]) {
          _tokenState &= ~uint(49152);
          _tokenState |= 98304;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 98304 == 98304) {
        // <--- sid_0b70b2dc_a7c5_471a_ae6c_7aa0f4d2b20b Sends the results from the diagnostics --->
        if (id == 17 && msg.sender == participants[36]) {
          _tokenState &= ~uint(98304);
          _tokenState |= 196608;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 196608 == 196608) {
        // <--- sid_907f86b4_e43c_42a4_84e6_42af0a436cc0 Notification for the first batch of CPU shipment --->
        if (id == 12 && msg.sender == participants[22]) {
          _tokenState &= ~uint(196608);
          _tokenState |= 393216;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 393216 == 393216) {
        // <--- sid_36aec271_211c_45af_98e7_a36dcc243fe2 Makes reclamation --->
        if (id == 13 && msg.sender == participants[26]) {
          _tokenState &= ~uint(393216);
          _tokenState |= 786432;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 786432 == 786432) {
        // Handle exclusive gateway
        // <--- exclusive gateway sid_f5e250e9_8224_4c08_96cc_5b213fe8e878 --->
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(786432);
          _tokenState |= 1572864;
          continue;
        } else {
          _tokenState &= ~uint(786432);
          _tokenState |= 1572864;
          continue;
        }
      }
      
      if (_tokenState & 1572864 == 1572864) {
        // Handle exclusive gateway
        // <--- exclusive gateway sid_7d650b82_5367_4ca4_b00c_eece35c1bedd --->
        _tokenState &= ~uint(1572864);
        _tokenState |= 3145728;
        continue;
      }
      
      if (_tokenState & 3145728 == 3145728) {
        // <--- sid_61585682_6a88_4404_a770_8142c2b15acc Sends the results from the diagnostics --->
        if (id == 19 && msg.sender == participants[36]) {
          _tokenState &= ~uint(3145728);
          _tokenState |= 6291456;
          id = 0;
          continue;
        }
      }
      
      if (_tokenState & 6291456 == 6291456) {
        // <--- sid_5b7ea44c_794b_4f82_9750_18560896a6a7 --->
        if (id == 19 && msg.sender == participants[36]) {
          _tokenState &= ~uint(6291456);
          _tokenState |= 0;
          break;
        }
      }
      
      if (_tokenState & 737392 == 737392) {
        // Handle parallel gateway
        // This is a join gateway, wait for all paths
        if ((_tokenState & 737392) == 737392) { // 98304 | 639092
          _tokenState &= ~uint(737392);
          _tokenState |= 786432;
          continue;
        }
        break;
      }
      
      break;
    }
    
    tokenState = _tokenState;
  }
}
