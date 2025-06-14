// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:05:14.314Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_8d71145a_1d8c_4675_954c_783d2f183af1 {
    uint public tokenState = 1; // Start with the StartEvent active
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (oryx_0A73746C-CB70-4D43-A9E4-64B923C6B8F7)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate first choreography task
                continue;
            }

            // Choreography Task: Bewerbung abschicken (oryx_17BDCD00-2EF4-4300-9B41-89E99AB80C1E)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to exclusive gateway oryx_7DDDABBB-2A98-4667-BB99-A3F3F5C8D9D4
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway: oryx_7DDDABBB-2A98-4667-BB99-A3F3F5C8D9D4
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to fehlende Unterlagen anfordern (oryx_D2B4F66F-E45A-4EE5-BA1E-19823BBCB8C4)
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default: Unterlagen vollstaendig to oryx_5C25C2F4-2009-4959-99FB-C24B1A927205
                }
                continue;
            }

            // Choreography Task: fehlende Unterlagen anfordern (oryx_D2B4F66F-E45A-4EE5-BA1E-19823BBCB8C4)
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to exclusive gateway oryx_417481F9-A398-4067-BC4E-6B994FF3EF11
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway: oryx_417481F9-A398-4067-BC4E-6B994FF3EF11
            if (_tokenState & 32 == 32) {
                if (conditions & 8 == 8) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to oryx_8F38EF2C-B6DB-402D-8C9B-4B94B56A19B7
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default: Bewerber will Unterlagen nachsenden to oryx_CAAC4136-6550-45D4-B9FF-DA7123ABC114
                }
                continue;
            }

            // Choreography Task: fehlende Unterlagen nachschicken (oryx_CAAC4136-6550-45D4-B9FF-DA7123ABC114)
            if (_tokenState & 128 == 128) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Move to oryx_5C25C2F4-2009-4959-99FB-C24B1A927205
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway: oryx_5C25C2F4-2009-4959-99FB-C24B1A927205 (Converging)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 256; // Move to oryx_60CE99B5-A212-47B8-8A4D-C87D3F0DD799
                continue;
            }

            // Exclusive Gateway: oryx_60CE99B5-A212-47B8-8A4D-C87D3F0DD799
            if (_tokenState & 256 == 256) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 64; // Move to oryx_8F38EF2C-B6DB-402D-8C9B-4B94B56A19B7
                } else {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Default: Zusage to oryx_AF21D2E5-26A2-4BDA-A13A-3505624B4560
                }
                continue;
            }

            // Choreography Task: Zusage versenden (oryx_AF21D2E5-26A2-4BDA-A13A-3505624B4560)
            if (_tokenState & 512 == 512) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to oryx_C30C3A12-7A31-4C23-9FDC-6F5E501D1939
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway: oryx_C30C3A12-7A31-4C23-9FDC-6F5E501D1939
            if (_tokenState & 1024 == 1024) {
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Move to oryx_30B3598E-DF0D-402D-BD8A-BC8236E8E422
                } else {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096; // Default: Bewerber nimmt nicht an to oryx_A37F2E87-C324-404F-9D19-5E34AFC5C86A
                }
                continue;
            }

            // Choreography Task: Immatrikulationsunterlagen versenden (oryx_30B3598E-DF0D-402D-BD8A-BC8236E8E422)
            if (_tokenState & 2048 == 2048) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Move to oryx_A37F2E87-C324-404F-9D19-5E34AFC5C86A
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway: oryx_A37F2E87-C324-404F-9D19-5E34AFC5C86A (Converging)
            if (_tokenState & 4096 == 4096) {
                _tokenState &= ~uint(4096);
                _tokenState |= 0; // Move to EndEvent (oryx_D853B144-19D9-4F4F-80EB-8C1F67B4FDFD)
                break; // Terminate
            }

            // Exclusive Gateway: oryx_8F38EF2C-B6DB-402D-8C9B-4B94B56A19B7 (Converging)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                _tokenState |= 8192; // Move to Absage versenden (oryx_27A367A7-12ED-4EC6-BEDA-3DFD1B6BBA81)
                continue;
            }

            // Choreography Task: Absage versenden (oryx_27A367A7-12ED-4EC6-BEDA-3DFD1B6BBA81)
            if (_tokenState & 8192 == 8192) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 0; // Move to EndEvent (oryx_D853B144-19D9-4F4F-80EB-8C1F67B4FDFD)
                    taskID = 0;
                    break; // Terminate
                }
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}