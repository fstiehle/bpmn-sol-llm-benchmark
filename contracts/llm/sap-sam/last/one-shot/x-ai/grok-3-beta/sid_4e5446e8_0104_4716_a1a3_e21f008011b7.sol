// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:50:51.432Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_4e5446e8_0104_4716_a1a3_e21f008011b7 {
    uint public tokenState = 1; // Start with the start event active
    address[8] public participants;
    uint public conditions;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to First Task (oryx_77F922F4-C926-420E-AC36-82F492881B8A to oryx_2D87C0AD-1C70-4B00-90C1-B406D0CB1CAF)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) { // Bewerbung abschicken
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to first gateway (oryx_A200BA42-EF51-43C1-B019-D226E1AAC1A9)
                    taskID = 0;
                    continue;
                }
            }

            // Gateway: Unterlagen vollstaendig? (oryx_A200BA42-EF51-43C1-B019-D226E1AAC1A9)
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to converging gateway (oryx_123445D2-24AD-4BB5-9118-0165450B2B3C)
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Move to task for missing documents (oryx_6C8BD963-B2F4-47DB-ADA8-2ADC0ED9B691)
                    continue;
                }
            }

            // Fehlende Unterlagen anfordern (oryx_6C8BD963-B2F4-47DB-ADA8-2ADC0ED9B691)
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 4; // Move to converging gateway (oryx_123445D2-24AD-4BB5-9118-0165450B2B3C)
                    taskID = 0;
                    continue;
                }
            }

            // Converging Gateway (oryx_123445D2-24AD-4BB5-9118-0165450B2B3C)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 16; // Move to Zusage Gateway (oryx_1408DA1A-25EC-418C-9B03-0D7F8037E491)
                continue;
            }

            // Zusage Gateway (oryx_1408DA1A-25EC-418C-9B03-0D7F8037E491)
            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Absage task (oryx_8F147659-7E2E-4F5D-8F4D-EB397F99AD09)
                    continue;
                } else {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to Zusage task (oryx_2CD79A54-4137-492B-87F1-FACBA5D0E864)
                    continue;
                }
            }

            // Absage zuschicken (oryx_8F147659-7E2E-4F5D-8F4D-EB397F99AD09)
            if (_tokenState & 32 == 32) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Move to final converging gateway (oryx_E0381DB8-7BB7-4E7A-82D8-A815F98A2003)
                    taskID = 0;
                    continue;
                }
            }

            // Zusage zuschicken (oryx_2CD79A54-4137-492B-87F1-FACBA5D0E864)
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to final converging gateway (oryx_E0381DB8-7BB7-4E7A-82D8-A815F98A2003)
                    taskID = 0;
                    continue;
                }
            }

            // Final Converging Gateway (oryx_E0381DB8-7BB7-4E7A-82D8-A815F98A2003)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState = 0; // End of process (oryx_E62BBADF-5819-45C3-BD9C-3418E39BC4CB)
                break;
            }

            break; // Exit loop if no conditions are met
        }
        tokenState = _tokenState;
    }
}