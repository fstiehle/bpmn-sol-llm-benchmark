// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T22:40:59.083Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract deepseek_deepseek_chat_v3_0324_one_shot_sid_b68958b7_5b3c_4598_8be5_0b2c6b878d70 {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-6E7BC75D-207E-4D80-9AE8-CD7A71E4F01A Anfrage auf Reparatur stellen / Produkt an reBuy senden --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-EDC95EBB-1DB2-45EB-B9F1-DE20B008C455 Prüfung, ob es sich um einen Garantiefall handelt --->
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-25AA23A0-E09A-4708-8B06-8184876E4159 Kunde erhält Gerät zurück erhält eine Absage --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-492CD1C4-81EB-4B4B-B3C1-7BF00708AE5D Support nimmt sich dem defekten Gerät an / Garantiefall bewilligt --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-2D44CA56-2A4B-4959-B2A0-7326289F57BD Anfrage an Reparaturdienst; Prüfung, ob Gerät reparierbar ist --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-C0F110DA-170A-4626-816B-1BFAC6FD1E50 Ablehnung; Gerät ist irreparabel defekt --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-D8CFBA70-4C1A-4408-94A2-D5DB6A9AEC25 Gerät reparieren lassen --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-350EC8A3-700F-46EC-AC45-0F67663518EC Kunde erhält Kaufbetrag zurückerstattet --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-9A2B984C-85DA-4FDA-A60A-8CDAA4B4F902 Reparatur erfolgreich; Produkt kann zurück gesendet werden --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
                else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    continue;
                }
                else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
