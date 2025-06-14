// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:49:25.099Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_4403d60b_6072_427f_8914_d05f126ac4a4 {
    uint public tokenState = 1; // Start with the first position active
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-A6663D7A-4D36-4E24-B402-3B6D0CD89938 Pronalazenje dostupnog primjerka knjige --->
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next gateway sid-0BD99FF5-BA55-4708-86F5-B14B48A1EBAD
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C Posudivanje knjige --->
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to gateway sid-D0F11697-04A1-4881-B8FE-CF78C5620B3E
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 Vracanje posudene knjige --->
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to gateway sid-FD8AD121-C9E4-431A-B51F-38B8A433362D
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-5E955D68-8136-4843-BDD6-B30855E7FF76 Registriranje gubitka knjige --->
                if (4 == id && msg.sender == participants[7]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to task sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-0179BFA8-211F-4289-91B1-A5A18BF65DF5 Placanje vrijednosti izgubljene knjige --->
                if (5 == id && msg.sender == participants[9]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(128);
                    _tokenState |= 0; // End process
                    break; // End
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF Placanje zakasnine --->
                if (6 == id && msg.sender == participants[11]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(256);
                    _tokenState |= 0; // End process
                    break; // End
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-4459D276-4952-4A89-8151-505064149A15 Rezerviranje knjige --->
                if (7 == id && msg.sender == participants[12]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(512);
                    _tokenState |= 0; // End process
                    break; // End
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-0BD99FF5-BA55-4708-86F5-B14B48A1EBAD Exclusive Gateway --->
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 512; // Move to task sid-4459D276-4952-4A89-8151-505064149A15
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Default path to task sid-6DEC977C-0B4C-4233-A772-FF484BCFBD0C
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-D0F11697-04A1-4881-B8FE-CF78C5620B3E Event-Based Gateway --->
                _tokenState &= ~uint(8);
                _tokenState |= 16 | 64; // Activate both paths for tasks sid-9E7741AD-9B67-412F-B09F-EE04324BB9F7 and sid-5E955D68-8136-4843-BDD6-B30855E7FF76
                continue;
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-FD8AD121-C9E4-431A-B51F-38B8A433362D Exclusive Gateway --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Move to task sid-BA0AF6A7-C1DF-4EBD-9603-AE5D7AB2EDFF
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 0; // Default path to end
                    break; // End
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}