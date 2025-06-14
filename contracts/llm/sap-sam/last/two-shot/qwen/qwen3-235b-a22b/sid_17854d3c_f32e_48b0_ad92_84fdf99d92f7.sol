// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T05:15:59.486Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_17854d3c_f32e_48b0_ad92_84fdf99d92f7 {
    uint public tokenState = 1024;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            bool gatewayProcessed = false;

            // Process gateways
            if ((_tokenState & 1024) != 0) {
                // Exclusive converging gateway activation
                _tokenState &= ~uint(1024);
                _tokenState |= 2;
                gatewayProcessed = true;
            } else if ((_tokenState & 2048) != 0) {
                // Exclusive diverging gateway with condition &1
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 16;
                } else {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8;
                }
                gatewayProcessed = true;
            } else if ((_tokenState & 4096) != 0) {
                // Exclusive diverging gateway with condition &2
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 64;
                } else {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 512;
                }
                gatewayProcessed = true;
            }

            if (gatewayProcessed) {
                continue;
            }

            // Process tasks
            if ((_tokenState & 1) != 0) {
                // Task 1: Kredit
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 2) != 0) {
                // Task 2: Wohnung
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 4) != 0) {
                // Task 3: Gespräch
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 8) != 0) {
                // Task 4: Wohnung abgelehnt
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 16) != 0) {
                // Task 5: Wohnung angenommen
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 1;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 32) != 0) {
                // Task 6: Besichtigung
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 64) != 0) {
                // Task 7: Kredit geben
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 128) != 0) {
                // Task 8: Unterschreiben des Vertrags
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            } else if ((_tokenState & 256) != 0) {
                // Task 9: Eintragung
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(256);
                    tokenState = 0;
                    break;
                }
            } else if ((_tokenState & 512) != 0) {
                // Task 10: Kein Kredit
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(512);
                    tokenState = 0;
                    break;
                }
            } else {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
