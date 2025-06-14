// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:59:58.970Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7502f5f2_4250_4d09_a194_2d7312b7bc1b {
    uint public tokenState = 1; // Start with the first task active
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
            // Task 1: slanje problema (sid-DBACF7D5-D007-4F25-A4E9-00E3DF72A2C5)
            if (_tokenState & 1 == 1) {
                if (taskID == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    taskID = 0;
                    continue;
                }
            }

            // Task 2: dobijanje detaljnog opisa (sid-960F19B5-909B-41FC-BC7A-0BCA2E01BEA5)
            if (_tokenState & 2 == 2) {
                if (taskID == 2 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    taskID = 0;
                    continue;
                }
            }

            // Gateway: operater zna da resi (sid-5657E6B2-384A-4BAA-B5B5-C60AD28AB318)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to trazenje resenja (Task 4)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to stanje resenja (Task 3)
                    continue;
                }
            }

            // Task 3: stanje resenja (sid-EB936A34-57FB-492F-914F-0C38A32ACCBA)
            if (_tokenState & 16 == 16) {
                if (taskID == 3 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState = 0; // End of process
                    break;
                }
            }

            // Task 4: trazenje resenja (sid-AE31756A-4ACA-419E-953F-348EF5858010)
            if (_tokenState & 8 == 8) {
                if (taskID == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to next gateway
                    taskID = 0;
                    continue;
                }
            }

            // Gateway: podrska I nivoa zna da resi (sid-0F3BCA2B-2E90-46F9-B1B0-548849160943)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to trazenje resenja (Task 6)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to slanje resenja (Task 5)
                    continue;
                }
            }

            // Task 5: slanje resenja (sid-F3EBD7C8-1788-48BB-B375-672376D51FE8)
            if (_tokenState & 128 == 128) {
                if (taskID == 5 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Move to stanje resenja (Task 3)
                    taskID = 0;
                    continue;
                }
            }

            // Task 6: trazenje resenja (sid-351B7991-7029-4335-B071-8CC6646F7179)
            if (_tokenState & 64 == 64) {
                if (taskID == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to slanje resenja (Task 7)
                    taskID = 0;
                    continue;
                }
            }

            // Task 7: slanje resenja (sid-360D1C00-730A-4CDE-BCEA-56A27C1BEBD8)
            if (_tokenState & 256 == 256) {
                if (taskID == 7 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128; // Move to slanje resenja (Task 5)
                    taskID = 0;
                    continue;
                }
            }

            break; // Exit loop if no further transitions or task execution
        }
        tokenState = _tokenState;
    }
}