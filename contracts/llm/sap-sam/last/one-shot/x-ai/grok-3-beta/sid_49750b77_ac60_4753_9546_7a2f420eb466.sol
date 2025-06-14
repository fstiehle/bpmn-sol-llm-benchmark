// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:49:47.532Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_49750b77_ac60_4753_9546_7a2f420eb466 {
    uint public tokenState = 1; // Start with the StartEvent active
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (sid-B4E0074F-29F1-464C-AC9D-EF53BB9633DB)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to saopstavanje problema (Task 1)
                continue;
            }

            // saopstavanje problema (sid-ADE2BBE3-1E47-4634-867B-5FCC470C7C42, Task 1)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to dobijanje opisa problema (Task 2)
                    taskID = 0;
                    continue;
                }
            }

            // dobijanje opisa problema (sid-BC1B9586-C693-42A6-9707-0E2713E56C27, Task 2)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Gateway sid-9994DED5-787E-4BE2-AABA-D34534B31509
                    taskID = 0;
                    continue;
                }
            }

            // Gateway sid-9994DED5-787E-4BE2-AABA-D34534B31509 (zna resenje?)
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to converging gateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Default path to konsultovanje o problemu (Task 4)
                    continue;
                }
            }

            // konsultovanje o problemu (sid-2B0045D9-D674-4EEE-BC16-D6EFE522F432, Task 4)
            if (_tokenState & 32 == 32) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Gateway sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B
                    taskID = 0;
                    continue;
                }
            }

            // Gateway sid-6ED7CC8A-7A9D-4CED-8883-81491F7B549B (zna resenje?)
            if (_tokenState & 64 == 64) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to converging gateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Default path to prosledjivanje problema podrsci 2.nivoa (Task 5)
                    continue;
                }
            }

            // prosledjivanje problema podrsci 2.nivoa (sid-31F0A68E-0C14-4B89-8AB3-A1C46B586611, Task 5)
            if (_tokenState & 256 == 256) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to objasnjavanje resenja (Task 6)
                    taskID = 0;
                    continue;
                }
            }

            // objasnjavanje resenja (sid-C2E0791F-E232-4CFC-9860-7C4582FF0BC7, Task 6)
            if (_tokenState & 512 == 512) {
                if (taskID == 6 && msg.sender == participants[11]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 128; // Move to converging gateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
                    taskID = 0;
                    continue;
                }
            }

            // Converging Gateway sid-7758ED5E-3E5A-487A-82AB-910661B1A9BE
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 1024; // Move to vracanje resenja (Task 7)
                continue;
            }

            // vracanje resenja (sid-9CB7EF96-1BA2-468B-BFE1-FDCCC6B05965, Task 7)
            if (_tokenState & 1024 == 1024) {
                if (taskID == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 16; // Move to converging gateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57
                    taskID = 0;
                    continue;
                }
            }

            // Converging Gateway sid-56157FE2-7AE7-4366-BFCB-D21399AEDD57
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 2048; // Move to saopstavanje resenja (Task 3)
                continue;
            }

            // saopstavanje resenja (sid-D8A1AE1C-A2B7-41FB-ACAC-F37E92E70E28, Task 3)
            if (_tokenState & 2048 == 2048) {
                if (taskID == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Move to EndEvent
                    taskID = 0;
                    continue;
                }
            }

            // EndEvent (sid-A46748ED-5820-4B57-A718-6D5ACC56D2E6)
            if (_tokenState & 4096 == 4096) {
                _tokenState = 0; // Terminate the process
                break;
            }

            break; // Exit loop if no transitions are triggered
        }
        tokenState = _tokenState;
    }
}