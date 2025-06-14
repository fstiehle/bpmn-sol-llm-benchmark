// test x-ai/grok-3-beta - two-shot at 2025-06-12T08:40:49.142Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract x_ai_grok_3_beta_two_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
  uint public tokenState = 1;
  address[13] public participants;
  uint public conditions;
  
  constructor(address[13] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-53CFA203-CC6E-41C0-9C41-6E453F1AC64A Solicitar pizza (Call Center Website) --->
        if (1 == id && msg.sender == participants[0]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD Informar de pedido --->
        if (2 == id && msg.sender == participants[2]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16 Coordinar el despacho --->
        if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(16);
          _tokenState |= 32;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 64 == 64) {
        // <--- sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C Buscar Producto terminado --->
        if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 128 == 128) {
        // <--- sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 Despachar y cobrar pedido --->
        if (5 == id && msg.sender == participants[8]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-22B98510-5E3D-4621-9650-A39D2FC695AF Informar correcta entrega --->
        if (6 == id && msg.sender == participants[10]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(256);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-A3999359-7B61-4CAB-A780-EA1A18DB7CB2 Parallel Gateway Diverging --->
        // Activate all outgoing paths
        _tokenState &= ~uint(2);
        _tokenState |= 4; // Path to sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD
        _tokenState |= 16; // Path to sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16
        continue; 
      }
      if (_tokenState & 40 == 40) {
        // <--- sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15 Parallel Gateway Converging --->
        // Check if all incoming paths are active (sid-55CFE69A and sid-A5665F74)
        _tokenState &= ~uint(40);
        _tokenState |= 64; // Activate sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}