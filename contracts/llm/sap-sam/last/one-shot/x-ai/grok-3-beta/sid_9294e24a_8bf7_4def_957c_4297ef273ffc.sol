// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:07:21.124Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9294e24a_8bf7_4def_957c_4297ef273ffc {
    uint public tokenState = 1; // Start event is initialized as active
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
        while (_tokenState != 0) {
            // Start event (sid-5C906DF2-66D7-4085-97E4-8C2BDCC6349D) with bit 1
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to first task (sid-76C63599-3DD6-4043-A2B8-0BB8FBBD2AAF)
                continue;
            }

            // Task 1: Anfrage verschicken (sid-76C63599-3DD6-4043-A2B8-0BB8FBBD2AAF) with bit 2
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to converging gateway (sid-7306C3CA-B68C-4E2C-AE18-70D2676B6B80)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway (sid-7306C3CA-B68C-4E2C-AE18-70D2676B6B80) with bit 4
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Move to task (sid-85270B8F-7310-43BE-943A-7C865FF23F69)
                continue;
            }

            // Task 2: Angebot erstellen (sid-85270B8F-7310-43BE-943A-7C865FF23F69) with bit 8
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Initiating participant: Werbeagentur
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to diverging gateway (sid-BEF0BD94-9DBA-4EF0-9E8C-6E24B8C79E1F)
                    id = 0;
                    continue;
                }
            }

            // Diverging Gateway (sid-BEF0BD94-9DBA-4EF0-9E8C-6E24B8C79E1F) with bit 16
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                if (conditions & 1 == 1) {
                    _tokenState |= 32; // Move to task (sid-3CAAC027-DED0-416B-A8BB-98D1A0B7239B)
                } else if (conditions & 2 == 2) {
                    _tokenState |= 64; // Move to task (sid-C019EE0F-1EB1-42AC-98D4-F0710AD56207)
                } else {
                    _tokenState |= 128; // Default path to task (sid-E74407BF-FE6F-4217-A9AA-34EF09DD9CCF)
                }
                continue;
            }

            // Task 3: Aenderungswunsch fuer das Angebot (sid-E74407BF-FE6F-4217-A9AA-34EF09DD9CCF) with bit 128
            if (_tokenState & 128 == 128) {
                if (3 == id && msg.sender == participants[4]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(128);
                    _tokenState |= 4; // Move back to converging gateway (sid-7306C3CA-B68C-4E2C-AE18-70D2676B6B80)
                    id = 0;
                    continue;
                }
            }

            // Task 4: Angebot ablehnen (sid-3CAAC027-DED0-416B-A8BB-98D1A0B7239B) with bit 32
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Move to end event (sid-7FA594EF-448F-46EA-A63F-E41CEB022545)
                    id = 0;
                    continue;
                }
            }

            // Task 5: Angebot annehmen (sid-C019EE0F-1EB1-42AC-98D4-F0710AD56207) with bit 64
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[9]) { // Initiating participant: Kunde
                    _tokenState &= ~uint(64);
                    _tokenState |= 512; // Move to task (sid-4D1701E5-F5D9-46C7-BE19-68F0F3CDAF33)
                    id = 0;
                    continue;
                }
            }

            // Task 6: Verfuegbarkeit abfragen (sid-4D1701E5-F5D9-46C7-BE19-68F0F3CDAF33) with bit 512
            if (_tokenState & 512 == 512) {
                if (6 == id && msg.sender == participants[10]) { // Initiating participant: Werbeagentur
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to task (sid-FDECA237-E60D-49F9-BD7F-ED9E9D02AD37)
                    id = 0;
                    continue;
                }
            }

            // Task 7: Grafik erstellen lassen (sid-FDECA237-E60D-49F9-BD7F-ED9E9D02AD37) with bit 1024
            if (_tokenState & 1024 == 1024) {
                if (7 == id && msg.sender == participants[12]) { // Initiating participant: Werbeagentur
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Move to task (sid-30D67DEB-801C-49C7-9CEE-A5B3898418D4)
                    id = 0;
                    continue;
                }
            }

            // Task 8: Freigabe einholen (sid-30D67DEB-801C-49C7-9CEE-A5B3898418D4) with bit 2048
            if (_tokenState & 2048 == 2048) {
                if (8 == id && msg.sender == participants[14]) { // Initiating participant: Werbeagentur
                    _tokenState &= ~uint(2048);
                    _tokenState |= 256; // Move to end event (sid-7FA594EF-448F-46EA-A63F-E41CEB022545)
                    id = 0;
                    continue;
                }
            }

            // End event (sid-7FA594EF-448F-46EA-A63F-E41CEB022545) with bit 256
            if (_tokenState & 256 == 256) {
                _tokenState = 0; // Process termination
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}