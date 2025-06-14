// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:38:37.475Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_202caeea_22f7_4c00_ba13_a16aaf218b3d {
    uint public tokenState = 1; // Starting with the start event active
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event: Alarmsignal im Fahrzeug (sid-E0585C8E-3811-44D5-851A-B84A6AA0BA04)
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-F8DBFF58-2EFC-4411-A0B5-997E69BFC28C
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: CAN-Signal senden (sid-F8DBFF58-2EFC-4411-A0B5-997E69BFC28C)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-E362A37E-E15E-48DA-8AA7-415E1695773A
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask: Problem im Lkw melden (sid-E362A37E-E15E-48DA-8AA7-415E1695773A)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-7ADFA00A-0013-4B13-86A8-4A548E7F69D3
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: kontaktieren (sid-7ADFA00A-0013-4B13-86A8-4A548E7F69D3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-8ABAFDC0-B014-44F3-87DB-D5CEAF80F3F7
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask: Informationen zum Problem senden (sid-8ABAFDC0-B014-44F3-87DB-D5CEAF80F3F7)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate sid-F1C0F7EC-6FD8-4F2F-BDF2-A9F327A09D15
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask: Fehlermeldung weiterleiten (sid-F1C0F7EC-6FD8-4F2F-BDF2-A9F327A09D15)
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate sid-24BE8A82-43CA-49B3-80A8-C98EAB25D793
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask: Fehlermeldung uebermitteln (sid-24BE8A82-43CA-49B3-80A8-C98EAB25D793)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate end event sid-B0E1501B-EE99-4814-A1C0-E57E1D510ED2
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // End Event: Fehlermeldung uebermittelt (sid-B0E1501B-EE99-4814-A1C0-E57E1D510ED2)
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}