// test openai/gpt-4.1 - one-shot at 2025-06-11T23:50:47.560Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
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
      // <--- ChoreographyTask sid-53CFA203-CC6E-41C0-9C41-6E453F1AC64A Solicitar_pizza_Call_Center_Website --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
          // custom logic for Solicitar_pizza_Call_Center_Website
          _tokenState &= ~uint(1);
          _tokenState |= 2;
          id = 0;
          continue;
        }
      }
      // ParallelGateway sid-A3999359_7B61_4CAB_A780_EA1A18DB7CB2 (split)
      if (_tokenState & 2 == 2) {
        // split: activate outgoing branches
        _tokenState &= ~uint(2);
        _tokenState |= 4 | 8;
        continue;
      }
      // <--- ChoreographyTask sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD Informar_de_pedido --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
          // custom logic for Informar_de_pedido
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          id = 0;
          continue;
        }
      }
      // <--- ChoreographyTask sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16 Coordinar_el_despacho --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
          // custom logic for Coordinar_el_despacho
          _tokenState &= ~uint(8);
          _tokenState |= 32;
          id = 0;
          continue;
        }
      }
      // ParallelGateway sid-4BE89B1D_9DE9_40F6_AF90_A988A9B0DC15 (join)
      if (_tokenState & 48 == 48) {
        // join: wait for both incoming
        _tokenState &= ~uint(48);
        _tokenState |= 64;
        continue;
      }
      // <--- ChoreographyTask sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C Buscar_Producto_terminado --->
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
          // custom logic for Buscar_Producto_terminado
          _tokenState &= ~uint(64);
          _tokenState |= 128;
          id = 0;
          continue;
        }
      }
      // <--- ChoreographyTask sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 Despachar_y_cobrar_pedido --->
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
          // custom logic for Despachar_y_cobrar_pedido
          _tokenState &= ~uint(128);
          _tokenState |= 256;
          id = 0;
          continue;
        }
      }
      // <--- ChoreographyTask sid-22B98510-5E3D-4621-9650-A39D2FC695AF Informar_correcta_entrega --->
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[10]) {
          // custom logic for Informar_correcta_entrega
          _tokenState &= ~uint(256);
          // is end
          _tokenState = 0;
          break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}