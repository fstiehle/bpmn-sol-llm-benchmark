// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:17:27.835Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_7b20b02d_760a_4149_9bb6_1c8f5e79ac3b {
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
                // <--- ChoreographyTask_53CFA203 Solicitar pizza (Call Center - Website) --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ParallelGateway split --->
                _tokenState &= ~uint(2);
                _tokenState |= 8 | 4;
                continue;
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask_55CFE69A Informar de pedido --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_A5665F74 Coordinar el despacho --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 48 == 48) {
                // <--- ParallelGateway join --->
                _tokenState &= ~uint(48);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_8ED357F8 Buscar Producto terminado --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_8F33ABD4 Despachar y cobrar pedido --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_22B98510 Informar correcta entrega --->
                if (6 == id && msg.sender == participants[10]) {
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
