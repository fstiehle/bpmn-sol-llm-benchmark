// test openai/gpt-4.1 - one-shot at 2025-06-11T23:36:00.493Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_377766cd_ef11_4ef6_9fd5_493a682ec2e5 {
    uint public tokenState = 1;
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
            // ---- ChoreographyTask 1: oryx_3CC394C6_8CE0_404C_B2B7_96B3F010E4AE Submit a physical order ----
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    // (Customer submits order to PSD)
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // ---- ChoreographyTask 2: oryx_5F252A9D_C258_42C7_89BF_5A20AD869050 Submit a digital order ----
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[2]) {
                    // (Customer submits digital order to PSD)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ---- Gateway: oryx_D6066501_0C0D_4B05_BE6F_3674FAE64140 (converging exclusive) ----
            // Wait for either task 1 or 2 to finish
            if (_tokenState & 4 == 4) {
                // Auto move to Check Order Status
                _tokenState &= ~uint(4);
                _tokenState |= 8;
                continue;
            }
            // ---- ChoreographyTask 8: oryx_C94079F4_D673_4D03_86CA_841A4120001E Check Order Status ----
            if (_tokenState & 8 == 8) {
                if (8 == id && msg.sender == participants[14]) {
                    // (Customer checks order status with PSD)
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            // ---- Gateway: oryx_7EBD1558_F061_416B_8C86_8214A99F180D (diverging exclusive) ----
            if (_tokenState & 16 == 16) {
                // conditions & 2 == 2
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                } else {
                    // default path
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    continue;
                }
            }
            // ---- ChoreographyTask 3: oryx_96F23DC7_0361_4838_9D5D_19ABFD352340 Package delivery ----
            if (_tokenState & 32 == 32) {
                if (3 == id && msg.sender == participants[4]) {
                    // (PSD delivers package to Customer)
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            // ---- ChoreographyTask 4: oryx_386066EF_69B6_4A9D_8270_E32873438891 Notify arrival ----
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[6]) {
                    // (Customer notifies PSD of arrival)
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            // ---- ChoreographyTask 5: oryx_99D1F9AD_E51E_454B_B1B3_CBE1A6D08C47 Payement confirmation ----
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) {
                    // (Customer confirms payment to PSD)
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            // ---- ChoreographyTask 6: oryx_4089513A_8987_431B_AFD2_372DCC5842F2 Package delivered ----
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[10]) {
                    // (PSD delivers package to Customer)
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            // ---- ChoreographyTask 7: oryx_58F5A854_AF92_44FA_9196_50C74C4D4B73 Payment confirmation ----
            if (_tokenState & 1024 == 1024) {
                if (7 == id && msg.sender == participants[12]) {
                    // (Customer confirms payment to PSD)
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            // ---- Gateway: oryx_87DDC14A_D3EF_46BE_9CA4_D3DD7B6353C5 (converging exclusive) ----
            if (_tokenState & 1536 == 1536) {
                // Both payment confirmations (physical/digital) merge
                _tokenState &= ~uint(1536);
                _tokenState |= 4096;
                continue;
            }
            // ---- End Event ----
            if (_tokenState & 4096 == 4096) {
                // process ends
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}