// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:08:24.416Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9a5976e6_4b00_416f_adb8_896aa1b79fd4 {
    uint public tokenState = 1; // Start with the start event active
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
            // Start Event: sid-0ECF26BF-3C8F-4B98-82D6-6C4FD4BBF9DA (bit 1)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to exclusive gateway sid-99D74F7C-9F2D-4C11-A8F2-0402AA255A2A
                continue;
            }

            // Exclusive Gateway: sid-99D74F7C-9F2D-4C11-A8F2-0402AA255A2A (bit 2)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 4; // Move to parallel gateway sid-89C0972A-DCBD-4A02-974F-4F6497F7C91F
                } else {
                    _tokenState |= 8; // Default path to task sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C
                }
                continue;
            }

            // Parallel Gateway (Diverging): sid-89C0972A-DCBD-4A02-974F-4F6497F7C91F (bit 4)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 16; // Activate task sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5
                _tokenState |= 32; // Activate task sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8
                _tokenState |= 64; // Activate task sid-73AF27ED-C1B7-4550-960B-49B0B084123B
                continue;
            }

            // Choreography Task: sid-3030D517-0FAC-42D5-9C89-A8F1155EFD4C (bit 8, taskID 1)
            if (_tokenState & 8 == 8) {
                if (taskID == 1 && msg.sender == participants[0]) { // Initiating participant: Molkerei
                    _tokenState &= ~uint(8);
                    _tokenState |= 128; // Move to converging gateway sid-125B8229-750A-4737-8AF3-F6C1E4C357F1
                    taskID = 0;
                    continue;
                }
            }

            // Choreography Task: sid-0AD897F9-7F7A-4587-95E1-0DE371F53DF5 (bit 16, taskID 2)
            if (_tokenState & 16 == 16) {
                if (taskID == 2 && msg.sender == participants[2]) { // Initiating participant: Molkerei
                    _tokenState &= ~uint(16);
                    _tokenState |= 256; // Move to parallel gateway sid-BA0DCA8E-7741-428C-A564-536900613B64 (partial)
                    taskID = 0;
                    continue;
                }
            }

            // Choreography Task: sid-43AE4A17-8076-4EB5-B60E-93B29A1D6AC8 (bit 32, taskID 3)
            if (_tokenState & 32 == 32) {
                if (taskID == 3 && msg.sender == participants[4]) { // Initiating participant: Molkerei
                    _tokenState &= ~uint(32);
                    _tokenState |= 512; // Move to parallel gateway sid-BA0DCA8E-7741-428C-A564-536900613B64 (partial)
                    taskID = 0;
                    continue;
                }
            }

            // Choreography Task: sid-73AF27ED-C1B7-4550-960B-49B0B084123B (bit 64, taskID 4)
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[6]) { // Initiating participant: Molkerei
                    _tokenState &= ~uint(64);
                    _tokenState |= 1024; // Move to parallel gateway sid-BA0DCA8E-7741-428C-A564-536900613B64 (partial)
                    taskID = 0;
                    continue;
                }
            }

            // Parallel Gateway (Converging): sid-BA0DCA8E-7741-428C-A564-536900613B64 (bits 256, 512, 1024)
            if (_tokenState & 256 == 256 && _tokenState & 512 == 512 && _tokenState & 1024 == 1024) {
                _tokenState &= ~uint(256);
                _tokenState &= ~uint(512);
                _tokenState &= ~uint(1024);
                _tokenState |= 2048; // Move to converging gateway sid-125B8229-750A-4737-8AF3-F6C1E4C357F1
                continue;
            }

            // Exclusive Gateway (Converging): sid-125B8229-750A-4737-8AF3-F6C1E4C357F1 (bits 128, 2048)
            if (_tokenState & 128 == 128 || _tokenState & 2048 == 2048) {
                _tokenState &= ~uint(128);
                _tokenState &= ~uint(2048);
                _tokenState |= 4096; // Move to task sid-64FA6A0A-8A78-431A-832D-33E60AF3C869
                continue;
            }

            // Choreography Task: sid-64FA6A0A-8A78-431A-832D-33E60AF3C869 (bit 4096, taskID 6)
            if (_tokenState & 4096 == 4096) {
                if (taskID == 6 && msg.sender == participants[10]) { // Initiating participant: Molkerei
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192; // Move to task sid-2414D848-3DBE-43B9-BE5F-7411E200C56C
                    taskID = 0;
                    continue;
                }
            }

            // Choreography Task: sid-2414D848-3DBE-43B9-BE5F-7411E200C56C (bit 8192, taskID 5)
            if (_tokenState & 8192 == 8192) {
                if (taskID == 5 && msg.sender == participants[8]) { // Initiating participant: Spedition
                    _tokenState &= ~uint(8192);
                    _tokenState = 0; // End event reached, terminate process
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}