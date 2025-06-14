// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T05:16:19.593Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_b1b5292a_d9da_4b33_92b9_967af29b8264 {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event: Klient zlozyl zamowienie
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // ChoreographyTask: Zaplata za towar
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway: Czy zaplata sie powiodla?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 0;
                    break;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // ChoreographyTask: Realizacja zamowienia, przeslanie informacji o przesylce
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // ChoreographyTask: Aktualizacja danych na stronie
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // ChoreographyTask: Przekazanie towaru kurierowi
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 64 == 64) {
                // ChoreographyTask: Wyslanie informacji o przybyciu kuriera w danym dniu o danej godzinie, proba doreczenia przesylki
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // Exclusive Gateway: Czy dostarczono przesylke?
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                } else {
                    _tokenState &= ~uint(128);
                    _tokenState |= 0;
                    break;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // ChoreographyTask: Przekazanie do punktu odbiorczego
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break;
                }
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
