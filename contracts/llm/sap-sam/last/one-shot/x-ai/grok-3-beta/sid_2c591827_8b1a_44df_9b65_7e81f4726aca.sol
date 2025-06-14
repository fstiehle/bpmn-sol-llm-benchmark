// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:43:02.020Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
    uint public tokenState = 1; // Start with the start event active
    address[13] public participants;
    uint public conditions;

    constructor(address[13] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent (sid-DB7F14D8-A6C4-4570-8094-F2F4E5041424)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to First Contact task
                continue;
            }

            // ChoreographyTask: First Contact (sid-1ED0DF23-B541-4FA6-8580-D03802881F5C)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Inform Publisher task
                    taskID = 0;
                    continue;
                }
            }

            // ChoreographyTask: Inform Publisher (sid-08335AEB-B1BF-426B-99AB-8C8530EEF0FB)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Instructions for publication task
                    taskID = 0;
                    continue;
                }
            }

            // ChoreographyTask: Instructions for publication (sid-EEFBB567-306F-49EC-8788-5EB90B7063D7)
            if (_tokenState & 8 == 8) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to converging gateway (sid-8967CB45-5A2A-4CE6-9ABB-E8617248BF3E)
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway Converging (sid-8967CB45-5A2A-4CE6-9ABB-E8617248BF3E)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 32; // Move to event-based gateway (sid-728D1640-42A6-4207-AABA-59C4E09E64FB)
                continue;
            }

            // Event-Based Gateway (sid-728D1640-42A6-4207-AABA-59C4E09E64FB)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Activate drafts task
                _tokenState |= 128; // Activate cancel publishing task
                continue;
            }

            // ChoreographyTask: Drafts (sid-F3EC0F07-56AB-43B6-8395-E9067794DC02)
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Request for publishing task
                    taskID = 0;
                    continue;
                }
            }

            // ChoreographyTask: Request for publishing (sid-879015FA-6568-4923-9101-3F50983FBBBE)
            if (_tokenState & 256 == 256) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to diverging gateway (sid-05C0E28A-923E-47F1-82E3-1CB04BD358E6)
                    taskID = 0;
                    continue;
                }
            }

            // ChoreographyTask: Cancel Publishing (sid-4876DF19-BE6D-402C-864F-A93BA7F6B786)
            if (_tokenState & 128 == 128) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 2048; // Move to end event
                    taskID = 0;
                    continue;
                }
            }

            // Exclusive Gateway Diverging (sid-05C0E28A-923E-47F1-82E3-1CB04BD358E6)
            if (_tokenState & 512 == 512) {
                _tokenState &= ~uint(512);
                if (conditions & 1 == 1) {
                    _tokenState |= 16; // Move back to converging gateway
                } else {
                    _tokenState |= 2048; // Default path to end event
                }
                continue;
            }

            // End Event (sid-21AD9573-0FB3-4125-A516-9D5D4A4A09A2)
            if (_tokenState & 2048 == 2048) {
                _tokenState = 0; // Process termination
                break;
            }

            break; // Exit loop if no further transitions are made
        }
        tokenState = _tokenState;
    }
}