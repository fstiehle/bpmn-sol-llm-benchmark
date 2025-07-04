// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:43:20.221Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_24949f80_f61f_4372_83d5_6a6139f7126e {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;
    
    constructor(address[14] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-2A8C519B-FA14-48DA-9551-53685209B7F3 Anfrage stellen --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-17E8C140-858E-4263-8049-98F7DA801390 Angebot vorlegen --->
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-F80E4543-2ECB-464B-A37D-243945E38A27 Angebot ablehnen --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-CCF831C8-84D6-4DB1-9F15-73E236241023 Angebot zusagen --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-A78896B1-BFDB-4C77-88EC-A87A9D33CE54 Verfügbarkeit prüfen --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-193B1B0A-E12A-4687-AF7E-387F711B4BCA Kaffeebohnen bestellen --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-321D60EE-2226-4B45-91C2-440C52F3C3BA Kaffeebohnen liefern --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-A98A2F83-9C3D-4AC5-ACD1-7878EF55E3E2 --->
                _tokenState &= ~uint(4);
                _tokenState |= 8 | 16;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
