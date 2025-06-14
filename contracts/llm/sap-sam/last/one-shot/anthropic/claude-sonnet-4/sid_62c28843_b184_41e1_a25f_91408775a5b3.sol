// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:29:25.008Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_62c28843_b184_41e1_a25f_91408775a5b3 {
    uint public tokenState = 1;
    address[30] public participants;
    uint public conditions;
    
    constructor(address[30] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start event - auto transition to exclusive gateway
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            
            if (_tokenState & 2 == 2) {
                // Exclusive gateway - Welches Mensaessen essen?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Task 1
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Task 2
                    continue;
                }
                // Default: Essen 2
                _tokenState &= ~uint(2);
                _tokenState |= 16; // Task 3
                continue;
            }
            
            if (_tokenState & 4 == 4) {
                // Task 1: An Warteschlange 1 anstellen
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // To converging gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8 == 8) {
                // Task 2: An Warteschlange 3 anstellen
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // To converging gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 16 == 16) {
                // Task 3: An Warteschlange 2 anstellen
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // To converging gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32 == 32) {
                // Converging gateway - auto transition
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Task 4
                continue;
            }
            
            if (_tokenState & 64 == 64) {
                // Task 4: Teller bereitstellen
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Task 5
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 128 == 128) {
                // Task 5: Teller befuellen
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Task 6
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 256 == 256) {
                // Task 6: Teller auf die Theke stellen
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Task 7
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 512 == 512) {
                // Task 7: Teller von der Theke nehmen
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Task 8
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 1024 == 1024) {
                // Task 8: Zur Kassen begeben
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Task 9
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 2048 == 2048) {
                // Task 9: Beitrag ermitteln
                if (9 == id && msg.sender == participants[17]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Task 10
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 4096 == 4096) {
                // Task 10: Forderungen bezahlen
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192; // Exclusive gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 8192 == 8192) {
                // Exclusive gateway - Einzahlung > Beitrag?
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 32768; // Task 13
                    continue;
                }
                // Default: ja
                _tokenState &= ~uint(8192);
                _tokenState |= 16384; // Task 12
                continue;
            }
            
            if (_tokenState & 16384 == 16384) {
                // Task 12: Einzahlungsbetrag einkassieren
                if (12 == id && msg.sender == participants[23]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536; // Task 11
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 32768 == 32768) {
                // Task 13: Einzahlungsbetrag einkassieren
                if (13 == id && msg.sender == participants[25]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 131072; // Converging gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 65536 == 65536) {
                // Task 11: Wechselgeld ausgeben
                if (11 == id && msg.sender == participants[21]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 131072; // Converging gateway
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 131072 == 131072) {
                // Converging gateway - auto transition
                _tokenState &= ~uint(131072);
                _tokenState |= 262144; // Task 14
                continue;
            }
            
            if (_tokenState & 262144 == 262144) {
                // Task 14: Essensplatz suchen
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 524288; // Task 15
                    id = 0;
                    continue;
                }
            }
            
            if (_tokenState & 524288 == 524288) {
                // Task 15: Essen verzehren
                if (15 == id && msg.sender == participants[28]) {
                    _tokenState &= ~uint(524288);
                    _tokenState = 0; // End
                    id = 0;
                    break;
                }
            }
            
            break;
        }
        tokenState = _tokenState;
    }
}
