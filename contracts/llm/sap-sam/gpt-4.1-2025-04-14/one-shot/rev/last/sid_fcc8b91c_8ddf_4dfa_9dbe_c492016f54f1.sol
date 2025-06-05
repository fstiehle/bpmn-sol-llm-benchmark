// test GPT 4.1 - One Shot Revised at 2025-06-05T15:22:20.332Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {

            // -- sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6: Bewerbung und Eingangsbestätigung senden
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }

            // -- Gateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157: Bewerbung vollständig ?
            if (_tokenState & 2 == 2) {
                bool transitioned = false;
                if (conditions & 1 == 1) {
                    // sid-BF908D03-AB64-4DE5-931B-5CB7F5AF78C7 (condition)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    transitioned = true;
                    continue;
                }
                // default sid-4069629D-D16A-45C2-9564-95868D56762E
                if (!transitioned) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }

            // -- sid-63049054-FF0D-448E-A42E-7B917601D74C: Fehlende Unterlagen anfordern
            if (_tokenState & 4 == 4) {
                if (id == 1 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }

            // -- sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F: Fehlende Unterlagen schicken
            if (_tokenState & 16 == 16) {
                if (id == 2 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }

            // -- Gateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72 (join)
            if (_tokenState & 40 == 40) {
                // both 8 and 32 must be set
                _tokenState &= ~uint(40);
                _tokenState |= 64;
                continue;
            }

            // -- Gateway sid-A1DCC015-7407-4D15-80AB-4AC299655E72 (join) - shortcut for only one token active
            if (_tokenState & 8 == 8) {
                _tokenState &= ~uint(8);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 64;
                continue;
            }

            // -- Gateway sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D: Bewerbung ausreichend ?
            if (_tokenState & 64 == 64) {
                bool transitioned = false;
                if (conditions & 2 == 2) {
                    // sid-2F3AC027-22F1-4D6A-8A9B-8146D23D732B (condition)
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    transitioned = true;
                    continue;
                }
                // default sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F
                if (!transitioned) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }

            // -- sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF: Zusage senden
            if (_tokenState & 128 == 128) {
                if (id == 3 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    continue;
                }
            }

            // -- sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9: Absage senden
            if (_tokenState & 256 == 256) {
                if (id == 4 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    continue;
                }
            }

            // -- Gateway sid-684ECB46-310F-4D15-9C70-6CE7F49A771F (join)
            if (_tokenState & 1536 == 1536) {
                // both 512 and 1024 must be set
                _tokenState &= ~uint(1536);
                _tokenState |= 2048;
                continue;
            }
            // -- Gateway sid-684ECB46-310F-4D15-9C70-6CE7F49A771F (join) - shortcut for only one token active
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                _tokenState |= 2048;
                continue;
            }
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 2048;
                continue;
            }

            // -- End Event sid-8EA82B3A-29EA-4FD9-9EEC-54B4805F4563
            if (_tokenState & 2048 == 2048) {
                _tokenState = 0;
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}