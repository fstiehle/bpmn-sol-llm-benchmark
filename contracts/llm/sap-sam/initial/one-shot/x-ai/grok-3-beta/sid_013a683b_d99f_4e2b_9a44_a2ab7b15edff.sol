// test x-ai/grok-3-beta - one-shot at 2025-06-11T18:39:08.615Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_013a683b_d99f_4e2b_9a44_a2ab7b15edff {
    uint public tokenState = 1; // Starting with the start event active
    address[8] public participants;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-56834B12-7360-4FB0-85FC-AAFCA3D66457 Hotline Anrufen --->
                if (taskID == 1 && msg.sender == participants[1]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-5447374F-1603-455D-AA0E-905DD400C5ED Probleme loesen --->
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-5C3B79C5-F84E-4FF2-A431-824BB133308D Kunden besuchen --->
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-C8E66024-EF11-45B7-9050-2DA1576005D3 Formular unterschreiben --->
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End of process
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}