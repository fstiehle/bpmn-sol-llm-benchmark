// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T04:22:39.683Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_8854ac45_7987_45c7_ac8a_380786a32df8 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;
    
    constructor(address[16] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-B2315AEB-5B30-4FCF-9A71-CE1D322DA4BA findet gewuenschten Titel nicht, stellt Anfrage --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-DBF8C1CB-F210-4BE2-8F24-917B1222F0DA ueberprueft Mediathek nach diesem Titel --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-8D294001-996C-4C18-BE7D-B8C12A4E03BC macht Angebot --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-0FA4A8C3-EFE4-4DCF-8250-51C08636B652 prueft Angebot --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-2DE00CF7-6B13-4C8B-AFC9-8411D05EDFA1 leitet Angebot weiter --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-2B159E97-31EE-4DEB-9CAE-DE9142C948B9 leitet Angebot nicht weiter --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-6720CB2F-39DE-4D81-B878-9D40DE9D4A05 Bezahlung der Lizenzgebuehr des Titels --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-8E23B660-E062-4BE2-B7FE-5FAB006E5596 fuegt den neuen Titel in Mediathek hinzu --->
                if (8 == id && msg.sender == participants[14]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    // <--- auto transition --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                } else {
                    // <--- auto transition --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
