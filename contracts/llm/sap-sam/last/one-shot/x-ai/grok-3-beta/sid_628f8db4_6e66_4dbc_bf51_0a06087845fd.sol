// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:55:01.493Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_628f8db4_6e66_4dbc_bf51_0a06087845fd {
    uint public tokenState = 1; // Start with the start event active
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- Start Event to Seminaranfrage weiterleiten --->
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-0D901C54-7C0B-4A1B-B120-22FF30DA505E
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-0D901C54-7C0B-4A1B-B120-22FF30DA505E Seminaranfrage weiterleiten --->
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-05E87F86-112D-4E1F-AA7D-93A34F85B3AF (exclusiveGateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-05E87F86-112D-4E1F-AA7D-93A34F85B3AF Exclusive Gateway (Converging) --->
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate sid-7361E9A9-0DEB-45D2-962E-6E3B1F835921 (default flow)
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-7361E9A9-0DEB-45D2-962E-6E3B1F835921 Angebot versenden --->
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-C7841A0C-3408-403E-8A15-16F91CDC56FD (eventBasedGateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-C7841A0C-3408-403E-8A15-16F91CDC56FD Event-Based Gateway (Diverging) --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate sid-6C8FFED6-E7B4-4F20-9CCB-3D7EB1D99518 (Ja)
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate sid-5F1A9D5C-4FC4-44D4-A6D2-669732D469BA (Nein)
                }
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-6C8FFED6-E7B4-4F20-9CCB-3D7EB1D99518 Wuensche zusenden --->
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(32);
                    _tokenState |= 4; // Activate sid-05E87F86-112D-4E1F-AA7D-93A34F85B3AF (exclusiveGateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-5F1A9D5C-4FC4-44D4-A6D2-669732D469BA Angebot annehmen --->
                if (4 == id && msg.sender == participants[6]) {
                    // Custom code for task here if needed
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate end event
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- End Event --->
                _tokenState = 0; // Terminate the process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}