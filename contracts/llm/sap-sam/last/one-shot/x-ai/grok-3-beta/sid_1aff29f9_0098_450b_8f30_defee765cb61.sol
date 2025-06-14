// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:37:48.419Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_1aff29f9_0098_450b_8f30_defee765cb61 {
    uint public tokenState = 1; // Start with the start event active
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-5F67C06C-20B9-4E0E-B4EF-C293FBACEF7A) to Task 4
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 4 (sid-08E44EEC-F5A2-4529-9B95-DAA0B1553E3B)
                continue;
            }

            // Task 4: Kunde fuellt Formular aus (sid-08E44EEC-F5A2-4529-9B95-DAA0B1553E3B)
            if (_tokenState & 2 == 2) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 1 (sid-71EECEC0-BED7-4D5B-A3B9-F5E0A08A1B91)
                    taskID = 0;
                    continue;
                }
            }

            // Task 1: Ticket erstellen (sid-71EECEC0-BED7-4D5B-A3B9-F5E0A08A1B91)
            if (_tokenState & 4 == 4) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Task 10 (sid-04736748-3A55-4172-8EC2-70379C6D6C1C)
                    taskID = 0;
                    continue;
                }
            }

            // Task 10: Meldet sich an (sid-04736748-3A55-4172-8EC2-70379C6D6C1C)
            if (_tokenState & 8 == 8) {
                if (taskID == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Task 2 (sid-C3423358-0834-46F4-9BEF-2312F3F5670B)
                    taskID = 0;
                    continue;
                }
            }

            // Task 2: Ticket auswaehlen (sid-C3423358-0834-46F4-9BEF-2312F3F5670B)
            if (_tokenState & 16 == 16) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Gateway (sid-0F1C5333-10D0-4B87-80D3-59126F5AB5F7)
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-0F1C5333-10D0-4B87-80D3-59126F5AB5F7)
            if (_tokenState & 32 == 32) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate End Event (sid-B800242F-DF9E-49B1-BB68-2BAC0BF10E80)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to Task 3 (sid-640C6210-0293-4116-9743-EE1E3CECEBC1)
                    continue;
                }
            }

            // Task 3: Ticket bearbeiten (sid-640C6210-0293-4116-9743-EE1E3CECEBC1)
            if (_tokenState & 128 == 128) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 5 (sid-4A7608DF-1B16-49D8-8329-8CE3A53FEB93)
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: Status veraendern (sid-4A7608DF-1B16-49D8-8329-8CE3A53FEB93)
            if (_tokenState & 256 == 256) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Task 6 (sid-C1BA5A74-1714-45AF-B4E3-8A6DA558B477)
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: Ticket abschliessen (sid-C1BA5A74-1714-45AF-B4E3-8A6DA558B477)
            if (_tokenState & 512 == 512) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 7 (sid-B568F431-74F6-46AC-932A-58E90EB96830)
                    taskID = 0;
                    continue;
                }
            }

            // Task 7: Ticket abspeichern (sid-B568F431-74F6-46AC-932A-58E90EB96830)
            if (_tokenState & 1024 == 1024) {
                if (taskID == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate Task 8 (sid-0E65D5AE-A506-4126-AD69-2C5AF174C9BE)
                    taskID = 0;
                    continue;
                }
            }

            // Task 8: Rueckmeldung zu Bearbeitung geben (sid-0E65D5AE-A506-4126-AD69-2C5AF174C9BE)
            if (_tokenState & 2048 == 2048) {
                if (taskID == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Activate Task 9 (sid-B42BA3E1-4936-4177-9785-0CBF5888F7DB)
                    taskID = 0;
                    continue;
                }
            }

            // Task 9: Rueckmeldung einsehen (sid-B42BA3E1-4936-4177-9785-0CBF5888F7DB)
            if (_tokenState & 4096 == 4096) {
                if (taskID == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 64; // Activate End Event (sid-B800242F-DF9E-49B1-BB68-2BAC0BF10E80)
                    taskID = 0;
                    continue;
                }
            }

            // End Event (sid-B800242F-DF9E-49B1-BB68-2BAC0BF10E80)
            if (_tokenState & 64 == 64) {
                _tokenState = 0; // Process termination
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}