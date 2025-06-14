// test openai/gpt-4.1 - two-shot at 2025-06-12T01:31:43.799Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
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
      // <--- sid-53CFA203-CC6E-41C0-9C41-6E453F1AC64A Solicitar pizza (Call Center  Website) --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD Informar de pedido --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16 Coordinar el despacho --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // <--- sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C Buscar Producto terminado --->
      if (_tokenState & 32 == 32) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 Despachar y cobrar pedido --->
      if (_tokenState & 64 == 64) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue;
        }
      }
      // <--- sid-22B98510-5E3D-4621-9650-A39D2FC695AF Informar correcta entrega --->
      if (_tokenState & 128 == 128) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(128);
        _tokenState |= 0;
        break; // is end
        }
      }
      // <--- Parallel Gateway: sid-A3999359-7B61-4CAB-A780-EA1A18DB7CB2 (Diverging) --->
      if (_tokenState & 2 == 2) {
        // Split: sid-A3999359-7B61-4CAB-A780-EA1A18DB7CB2
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // <--- Parallel Gateway: sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15 (Converging) --->
      if (_tokenState & 12 == 12) {
        // Join: sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15
        _tokenState &= ~uint(12);
        _tokenState |= 32;
        continue;
      }
      // <--- auto transition from sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C to sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 --->
      // Already handled by sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C task outgoing.
      // <--- auto transition from sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 to sid-22B98510-5E3D-4621-9650-A39D2FC695AF --->
      // Already handled by sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 task outgoing.
      break;
    }
    tokenState = _tokenState;
  }
}