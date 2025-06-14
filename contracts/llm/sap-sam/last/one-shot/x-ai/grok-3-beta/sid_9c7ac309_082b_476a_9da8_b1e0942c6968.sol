// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:09:26.079Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
    uint public tokenState = 1; // Start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event activates first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-91108EB7-E6BC-4698-B899-E87A6F6286BA
                continue;
            }
            if (_tokenState & 2 == 2) {
                // sid-91108EB7-E6BC-4698-B899-E87A6F6286BA - Antragsformular uebermitteln
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-B354A127-0A5D-457E-940F-A5FD6B93DAB9
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // sid-B354A127-0A5D-457E-940F-A5FD6B93DAB9 - Formular weiterleiten
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-839A0098-79BF-4A7B-8859-9536463ECE67
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // sid-839A0098-79BF-4A7B-8859-9536463ECE67 - Treffen Entscheidung
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-E637D176-D990-4BDB-A59F-D64F14F9125F (Gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // sid-E637D176-D990-4BDB-A59F-D64F14F9125F - Exclusive Gateway
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate sid-E554BFD8-A719-4C64-A76E-20B9E08151DB (Rejection)
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate sid-62FE5728-7B51-4DEC-B05A-F3782899E75F (Acceptance - default)
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // sid-E554BFD8-A719-4C64-A76E-20B9E08151DB - informiert ueber Ablehnung
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // End event reached, terminate
                    break;
                }
            }
            if (_tokenState & 64 == 64) {
                // sid-62FE5728-7B51-4DEC-B05A-F3782899E75F - Vertrag wird abgeschlossen
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0; // End event reached, terminate
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}