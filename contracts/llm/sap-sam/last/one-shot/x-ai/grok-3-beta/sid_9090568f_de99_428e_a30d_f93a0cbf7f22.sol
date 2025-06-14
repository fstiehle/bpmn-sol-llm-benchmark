// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:06:04.343Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_9090568f_de99_428e_a30d_f93a0cbf7f22 {
    uint public tokenState = 1; // Start event is active initially
    address[8] public participants;

    constructor(address[8] memory _participants) {
        participants = _participants;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event to Doctor Request
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate Doctor Request task
                break;
            }
            if (_tokenState & 2 == 2) {
                // Doctor Request Task (sid-36C17460-CCA2-4F5A-8A93-4DBEE5A85F56)
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate Handle Symptoms task
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // Handle Symptoms Task (sid-72908014-86E6-4EAD-A1BB-94907B277E65)
                if (taskID == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate Handle Prescription task
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Handle Prescription Task (sid-3BE82C81-1697-457F-A8AB-DB30D781B04C)
                if (taskID == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate Handle Medicine task
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Handle Medicine Task (sid-AC8B4DA2-7170-4304-8B76-283E2C2FE236)
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate End Event
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // End Event
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}