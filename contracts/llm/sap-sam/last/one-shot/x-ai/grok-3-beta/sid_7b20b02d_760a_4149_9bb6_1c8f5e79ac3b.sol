// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:00:53.547Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
    uint public tokenState = 1; // Start with the start event active
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
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event: sid-8BB000FE-3F89-44F3-8381-72BCF9654F92
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-53CFA203-CC6E-41C0-9C41-6E453F1AC64A
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: sid-53CFA203-CC6E-41C0-9C41-6E453F1AC64A - Solicitar pizza (Call Center - Website)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-A3999359-7B61-4CAB-A780-EA1A18DB7CB2 (Parallel Gateway Diverging)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Parallel Gateway Diverging: sid-A3999359-7B61-4CAB-A780-EA1A18DB7CB2
                // Auto transition to both outgoing tasks
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD
                _tokenState |= 16; // Activate sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16
                continue;
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: sid-55CFE69A-8F1B-4CCB-8373-57B63BE493DD - Informar de pedido
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate converging gateway part for this path (sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask: sid-A5665F74-7A87-4BF9-8F86-9C93D02C1B16 - Coordinar el despacho
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate converging gateway part for this path (sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 96 == 96) {
                // Parallel Gateway Converging: sid-4BE89B1D-9DE9-40F6-AF90-A988A9B0DC15
                // Both incoming paths are active (32 + 64 = 96), proceed to next task
                _tokenState &= ~uint(96);
                _tokenState |= 128; // Activate sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C
                continue;
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask: sid-8ED357F8-405A-4F6E-8249-BE9D8049BE4C - Buscar Producto terminado
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask: sid-8F33ABD4-ABBF-476D-B143-B2B498E7AFD2 - Despachar y cobrar pedido
                if (5 == id && msg.sender == participants[8]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate sid-22B98510-5E3D-4621-9650-A39D2FC695AF
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask: sid-22B98510-5E3D-4621-9650-A39D2FC695AF - Informar correcta entrega
                if (6 == id && msg.sender == participants[10]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate end event sid-00B93FE3-4B8C-41A3-8D23-047F460BD621
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // End Event: sid-00B93FE3-4B8C-41A3-8D23-047F460BD621
                _tokenState = 0; // Terminate the process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}