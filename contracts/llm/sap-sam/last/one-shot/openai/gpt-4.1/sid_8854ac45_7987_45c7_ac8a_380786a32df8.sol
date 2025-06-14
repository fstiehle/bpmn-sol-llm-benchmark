// test openai/gpt-4.1 - one-shot at 2025-06-11T23:54:57.492Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_8854ac45_7987_45c7_ac8a_380786a32df8 {
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
            // <--- sid-B2315AEB-5B30-4FCF-9A71-CE1D322DA4BA findet gewuenschten Titel nicht, stellt Anfrage --->
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for findet gewuenschten Titel nicht, stellt Anfrage --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            // <--- sid-DBF8C1CB-F210-4BE2-8F24-917B1222F0DA ueberprueft Mediathek nach diesem Titel --->
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for ueberprueft Mediathek nach diesem Titel --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }

            // <--- sid-8D294001-996C-4C18-BE7D-B8C12A4E03BC macht Angebot --->
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for macht Angebot --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }

            // <--- sid-0FA4A8C3-EFE4-4DCF-8250-51C08636B652 prueft Angebot --->
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for prueft Angebot --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            // <--- Exclusive Gateway sid-34103DF0-C6EF-4030-BCB1-52DCD8B287B0, bit = 16 --->
            if (_tokenState & 16 == 16) {
                bool taken = false;
                // sequenceFlow sid-89D86E35-DC7E-45FB-9CF8-C24A86D13F2E, condition: conditions & 1 == 1
                if (!taken && (conditions & 1 == 1)) {
                    // To: sid-2B159E97-31EE-4DEB-9CAE-DE9142C948B9 (task 6)
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    taken = true;
                    continue;
                }
                // default: sid-877A3275-01E7-4D42-813A-C4FDBDA8B4EB to sid-2DE00CF7-6B13-4C8B-AFC9-8411D05EDFA1 (task 5)
                if (!taken) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }

            // <--- sid-2DE00CF7-6B13-4C8B-AFC9-8411D05EDFA1 leitet Angebot weiter --->
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    // <--- custom code for leitet Angebot weiter --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            // <--- sid-2B159E97-31EE-4DEB-9CAE-DE9142C948B9 leitet Angebot nicht weiter --->
            if (_tokenState & 64 == 64) {
                if (id == 6 && msg.sender == participants[10]) {
                    // <--- custom code for leitet Angebot nicht weiter --->
                    _tokenState &= ~uint(64);
                    // End event reached, terminate process
                    _tokenState = 0;
                    break;
                }
            }

            // <--- sid-6720CB2F-39DE-4D81-B878-9D40DE9D4A05 Bezahlung der Lizenzgebuehr des Titels --->
            if (_tokenState & 128 == 128) {
                if (id == 7 && msg.sender == participants[12]) {
                    // <--- custom code for Bezahlung der Lizenzgebuehr des Titels --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            // <--- sid-8E23B660-E062-4BE2-B7FE-5FAB006E5596 fuegt den neuen Titel in Mediathek hinzu --->
            if (_tokenState & 256 == 256) {
                if (id == 8 && msg.sender == participants[14]) {
                    // <--- custom code for fuegt den neuen Titel in Mediathek hinzu --->
                    _tokenState &= ~uint(256);
                    // End event reached, terminate process
                    _tokenState = 0;
                    break;
                }
            }

            // No matching bit or transition, break.
            break;
        }
        tokenState = _tokenState;
    }
}