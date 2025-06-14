// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:58:57.628Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6f106151_3fbf_49f3_b4f1_dbddb5207068 {
    uint public tokenState = 1; // Start event is active initially
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event sid-FF2CF55A-7C29-4E7C-A482-75CFA36BF1DA
                // Auto transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-3C58D5A9-4A5D-4784-93F5-2EEAD658E4F7 (Kunde stellt Antragsformular)
                if (1 == id && msg.sender == participants[0]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-0C2844F3-8362-40EC-9404-AEE6DE89F808 (Gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Exclusive Gateway sid-0C2844F3-8362-40EC-9404-AEE6DE89F808
                if (conditions & 1 == 1) {
                    // Follow sid-7F36541B-5A22-4F83-9F1E-2ED56B2C2B51 to sid-05B396A1-4772-44AB-B4E2-21384E0A5D44
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-05B396A1-4772-44AB-B4E2-21384E0A5D44
                    continue;
                } else {
                    // Follow default sid-D444D23B-E42F-4B3A-8145-48513E956D64 to sid-D836F160-E1FA-4B10-9270-C224CAAA4139
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate sid-D836F160-E1FA-4B10-9270-C224CAAA4139
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-05B396A1-4772-44AB-B4E2-21384E0A5D44 (Informieren ueber zustimmen)
                if (3 == id && msg.sender == participants[4]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Activate End Event sid-0A54DCAF-A587-4A84-93D4-554CDF3C08C6
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-D836F160-E1FA-4B10-9270-C224CAAA4139 (Informieren ueber Ablehnung)
                if (2 == id && msg.sender == participants[2]) {
                    // Custom code for task can be added here
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate End Event sid-0A54DCAF-A587-4A84-93D4-554CDF3C08C6
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // End Event sid-0A54DCAF-A587-4A84-93D4-554CDF3C08C6
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}