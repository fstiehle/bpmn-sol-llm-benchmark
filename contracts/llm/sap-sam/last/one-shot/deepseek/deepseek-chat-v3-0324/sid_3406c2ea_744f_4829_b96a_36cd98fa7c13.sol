// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T16:51:16.174Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_3406c2ea_744f_4829_b96a_36cd98fa7c13 {
    uint public tokenState = 1;
    address[22] public participants;
    uint public conditions;
    
    constructor(address[22] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-7A6D2EC5-97F9-41C7-AA12-8533B2A978CE Anfrage stellen --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-2B34D3A5-E5DC-4813-B56A-69BA0DDDD357 Angebot stellen --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32;
                    continue;
                }
                _tokenState &= ~uint(4);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-4A1D27ED-C77F-4B5D-99A8-DB09C3577A0E Auftrag senden --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-033B60DD-1C6E-4D1B-9574-8CD685DEEC42 Absage senden --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-32373B24-9806-40FC-A1E8-E263E51D1057 Aenderung anfragen --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-208576A6-E551-4B40-8BFB-180FBB9CA81F Anfrage stellen --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
                _tokenState &= ~uint(128);
                _tokenState |= 512;
                continue;
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-678F1659-35AA-4CC5-AB06-B1C0AD9F16DD Verfuegbarkeit bestaetigen --->
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-E39CFE77-E760-4E6D-B257-03502B5BD04F Verfuegbarkeit absagen --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- sid-DFD49704-139E-44DF-8E10-E71080163B76 Auftrag erstellen --->
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-5DE29D81-E263-4AF0-8F8B-D6F611C543F5 Grafik verschicken --->
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- sid-5C840AD1-6813-4439-90B5-2F1C831321E4 Anzeige uebermitteln --->
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
