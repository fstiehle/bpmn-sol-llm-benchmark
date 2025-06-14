// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:47:15.427Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
    uint public tokenState = 1; // Start event active
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (oryx_A2711178-6072-406E-A76F-3F343D111CE4) to Gateway (oryx_3222FEF9-EE7F-419B-8AB2-60FBF18695DF)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Gateway oryx_3222FEF9-EE7F-419B-8AB2-60FBF18695DF
                continue;
            }

            // Gateway (oryx_3222FEF9-EE7F-419B-8AB2-60FBF18695DF)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 8; // Task oryx_5F252A9D-C258-42C7-89BF-5A20AD869050 (Digital Order)
                } else {
                    _tokenState |= 4; // Default: Task oryx_3CC394C6-8CE0-404C-B2B7-96B3F010E4AE (Physical Order)
                }
                continue;
            }

            // Task 1: Submit a Physical Order (oryx_3CC394C6-8CE0-404C-B2B7-96B3F010E4AE)
            if (_tokenState & 4 == 4) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Gateway oryx_D6066501-0C0D-4B05-BE6F-3674FAE64140
                    taskID = 0;
                    continue;
                }
            }

            // Task 2: Submit a Digital Order (oryx_5F252A9D-C258-42C7-89BF-5A20AD869050)
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Gateway oryx_D6066501-0C0D-4B05-BE6F-3674FAE64140
                    taskID = 0;
                    continue;
                }
            }

            // Gateway (oryx_D6066501-0C0D-4B05-BE6F-3674FAE64140)
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                _tokenState |= 32; // Task oryx_C94079F4-D673-4D03-86CA-841A4120001E (Check Order Status)
                continue;
            }

            // Task 8: Check Order Status (oryx_C94079F4-D673-4D03-86CA-841A4120001E)
            if (_tokenState & 32 == 32) {
                if (taskID == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Gateway oryx_7EBD1558-F061-416B-8C86-8214A99F180D
                    taskID = 0;
                    continue;
                }
            }

            // Gateway (oryx_7EBD1558-F061-416B-8C86-8214A99F180D)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                if (conditions & 2 == 2) {
                    _tokenState |= 128; // Task oryx_96F23DC7-0361-4838-9D5D-19ABFD352340 (Package Delivery)
                } else {
                    _tokenState |= 256; // Default: Task oryx_386066EF-69B6-4A9D-8270-E32873438891 (Notify Arrival)
                }
                continue;
            }

            // Task 3: Package Delivery (oryx_96F23DC7-0361-4838-9D5D-19ABFD352340)
            if (_tokenState & 128 == 128) {
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Task oryx_99D1F9AD-E51E-454B-B1B3-CBE1A6D08C47 (Payment Confirmation)
                    taskID = 0;
                    continue;
                }
            }

            // Task 4: Notify Arrival (oryx_386066EF-69B6-4A9D-8270-E32873438891)
            if (_tokenState & 256 == 256) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024; // Task oryx_4089513A-8987-431B-AFD2-372DCC5842F2 (Package Delivered)
                    taskID = 0;
                    continue;
                }
            }

            // Task 5: Payment Confirmation (oryx_99D1F9AD-E51E-454B-B1B3-CBE1A6D08C47)
            if (_tokenState & 512 == 512) {
                if (taskID == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048; // Gateway oryx_87DDC14A-D3EF-46BE-9CA4-D3DD7B6353C5
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: Package Delivered (oryx_4089513A-8987-431B-AFD2-372DCC5842F2)
            if (_tokenState & 1024 == 1024) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096; // Task oryx_58F5A854-AF92-44FA-9196-50C74C4D4B73 (Payment Confirmation)
                    taskID = 0;
                    continue;
                }
            }

            // Task 7: Payment Confirmation (oryx_58F5A854-AF92-44FA-9196-50C74C4D4B73)
            if (_tokenState & 4096 == 4096) {
                if (taskID == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 2048; // Gateway oryx_87DDC14A-D3EF-46BE-9CA4-D3DD7B6353C5
                    taskID = 0;
                    continue;
                }
            }

            // Gateway (oryx_87DDC14A-D3EF-46BE-9CA4-D3DD7B6353C5)
            if (_tokenState & 2048 == 2048) {
                _tokenState &= ~uint(2048);
                _tokenState |= 0; // End Event (oryx_129CD6CC-363C-41EA-AADF-59BD6B983EFD)
                break; // Terminate process
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}