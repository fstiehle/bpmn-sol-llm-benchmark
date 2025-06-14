// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:44:57.894Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_32ebd244_789a_4034_845b_7909f514afae {
    uint public tokenState = 1; // Start event active
    address[24] public participants;
    uint public conditions;

    constructor(address[24] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-5570C64A-5E94-4664-970F-2A966267666D) -> Task 10
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Task 10 (sid-E3620D11-E6DC-4A65-B1AA-4EB21EBFC161)
                continue;
            }

            // Task 10: Urlaubsantrag ausfuellen und unterschreiben
            if (_tokenState & 2 == 2) {
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Task 1 (sid-D7480028-8993-45A4-9935-FB44D4B1EAD0)
                    id = 0;
                    continue;
                }
            }

            // Task 1: ausgefuellten und unterschriebenen Urlaubsantrag senden
            if (_tokenState & 4 == 4) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Task 2 (sid-64F20D69-8C4C-4A2A-BE70-35EEC849B4FB)
                    id = 0;
                    continue;
                }
            }

            // Task 2: Antrag weiterleiten
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Task 9 (sid-FF0126DF-BE30-4647-919F-9E823BDA02A5)
                    id = 0;
                    continue;
                }
            }

            // Task 9: Antrag pruefen
            if (_tokenState & 16 == 16) {
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate Gateway (sid-5B43745F-D1AD-4D4C-8C28-CB6749732273)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-5B43745F-D1AD-4D4C-8C28-CB6749732273)
            if (_tokenState & 32 == 32) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Activate Task 12 (sid-608D82CC-C620-4F52-B470-F9FD1E8E8A3B)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Activate Task 11 (sid-4609FD42-51BC-4BE0-B877-21573CF36C96) - Default path
                    continue;
                }
            }

            // Task 11: Antrag unterzeichnen
            if (_tokenState & 128 == 128) {
                if (id == 11 && msg.sender == participants[20]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate Task 4 (sid-3CB8E112-CDEC-4941-AE4C-9242FD4FE427)
                    id = 0;
                    continue;
                }
            }

            // Task 4: genehmigten und unterzeichneten Antrag zuruecksenden
            if (_tokenState & 256 == 256) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate Task 3 (sid-93A10FCD-BBB8-4C44-8573-877162EBB6CA)
                    id = 0;
                    continue;
                }
            }

            // Task 3: genehmigten und unterzeichneten Urlaubsantrag weiterleiten
            if (_tokenState & 512 == 512) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate Task 6 (sid-FC29AEDB-216D-4028-91A6-A1370E3290AB)
                    id = 0;
                    continue;
                }
            }

            // Task 6: Urlaubstage aus Antrag mit Urlaubs- und Fehltagekarte in Personalakte abgleichen
            if (_tokenState & 1024 == 1024) {
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Activate Parallel Gateway Split (sid-8CA25B2E-6393-4BC2-BA1F-CA06A1BEC1F7)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Split (sid-8CA25B2E-6393-4BC2-BA1F-CA06A1BEC1F7)
            if (_tokenState & 2048 == 2048) {
                _tokenState &= ~uint(2048);
                _tokenState |= 4096; // Activate Task 7 (sid-18ACAE26-A6E9-4892-94D4-AB9A766441F3)
                _tokenState |= 8192; // Activate Task 8 (sid-55FD4B75-CA30-4905-83D1-D83F643560E7)
                continue;
            }

            // Task 7: genehmigten Antrag zuruecksenden
            if (_tokenState & 4096 == 4096) {
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(4096);
                    if (_tokenState & 8192 == 0) {
                        _tokenState |= 16384; // Activate Parallel Gateway Join (sid-A7373EDE-B1FD-4798-AF2C-A69407BC8035)
                    }
                    id = 0;
                    continue;
                }
            }

            // Task 8: Kopie des Antrages anfertigen und in der Personalakte ablegen
            if (_tokenState & 8192 == 8192) {
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(8192);
                    if (_tokenState & 4096 == 0) {
                        _tokenState |= 16384; // Activate Parallel Gateway Join (sid-A7373EDE-B1FD-4798-AF2C-A69407BC8035)
                    }
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Join (sid-A7373EDE-B1FD-4798-AF2C-A69407BC8035)
            if (_tokenState & 16384 == 16384) {
                _tokenState &= ~uint(16384);
                _tokenState |= 32768; // Activate End Event (sid-17BF4B19-04D9-41A3-8AA4-9DD4AA62B94E)
                continue;
            }

            // Task 12: abgelehnten Antrag zuruecksenden
            if (_tokenState & 64 == 64) {
                if (id == 12 && msg.sender == participants[22]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 65536; // Activate Task 5 (sid-50B3F4F3-21BA-4B90-B709-1CAC29BB4287)
                    id = 0;
                    continue;
                }
            }

            // Task 5: Abgelehnten Urlaubsantrag weiterleiten
            if (_tokenState & 65536 == 65536) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 32768; // Activate End Event (sid-17BF4B19-04D9-41A3-8AA4-9DD4AA62B94E)
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-17BF4B19-04D9-41A3-8AA4-9DD4AA62B94E)
            if (_tokenState & 32768 == 32768) {
                _tokenState = 0; // Terminate process
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}