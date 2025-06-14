// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:04:04.524Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8854ac45_7987_45c7_ac8a_380786a32df8 {
    uint public tokenState = 1; // Start with the start event active
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event sid-25E40590-2354-4A85-8D73-1ED7C3BCF512
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-B2315AEB-5B30-4FCF-9A71-CE1D322DA4BA
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-B2315AEB-5B30-4FCF-9A71-CE1D322DA4BA "findet gewuenschten Titel nicht, stellt Anfrage"
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-DBF8C1CB-F210-4BE2-8F24-917B1222F0DA
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-DBF8C1CB-F210-4BE2-8F24-917B1222F0DA "ueberprueft Mediathek nach diesem Titel"
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-8D294001-996C-4C18-BE7D-B8C12A4E03BC
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-8D294001-996C-4C18-BE7D-B8C12A4E03BC "macht Angebot"
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-0FA4A8C3-EFE4-4DCF-8250-51C08636B652
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-0FA4A8C3-EFE4-4DCF-8250-51C08636B652 "prueft Angebot"
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate sid-34103DF0-C6EF-4030-BCB1-52DCD8B287B0 (Exclusive Gateway)
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // Exclusive Gateway sid-34103DF0-C6EF-4030-BCB1-52DCD8B287B0
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate sid-2B159E97-31EE-4DEB-9CAE-DE9142C948B9
                    continue;
                } else {
                    // Follow default path
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Activate sid-2DE00CF7-6B13-4C8B-AFC9-8411D05EDFA1
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-2B159E97-31EE-4DEB-9CAE-DE9142C948B9 "leitet Angebot nicht weiter"
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0; // End of process
                    taskID = 0;
                    break; // End event reached
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-2DE00CF7-6B13-4C8B-AFC9-8411D05EDFA1 "leitet Angebot weiter"
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate sid-6720CB2F-39DE-4D81-B878-9D40DE9D4A05
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-6720CB2F-39DE-4D81-B878-9D40DE9D4A05 "Bezahlung der Lizenzgebuehr des Titels"
                if (taskID == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate sid-8E23B660-E062-4BE2-B7FE-5FAB006E5596
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-8E23B660-E062-4BE2-B7FE-5FAB006E5596 "fuegt den neuen Titel in Mediathek hinzu"
                if (taskID == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // End of process
                    taskID = 0;
                    break; // End event reached
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}