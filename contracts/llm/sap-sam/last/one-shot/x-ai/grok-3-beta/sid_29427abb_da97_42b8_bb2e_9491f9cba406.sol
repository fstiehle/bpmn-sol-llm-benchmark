// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:42:32.894Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_29427abb_da97_42b8_bb2e_9491f9cba406 {
    uint public tokenState = 1; // Start with the start event active
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent sid-35F24DCA-960B-4ABB-B9C1-81C0C1C814A3
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to sid-0E2FFC62-7785-4536-B540-A2CEEEBCD7BF
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-0E2FFC62-7785-4536-B540-A2CEEEBCD7BF (prijavljivanje problema, taskID=1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to sid-3FF02039-7912-495C-A954-1180AA9D542F
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-3FF02039-7912-495C-A954-1180AA9D542F (dobijanje detaljnog opisa problema, taskID=2)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to sid-D370EFBF-A319-44D2-9A22-9E8EEFE87248 (Gateway)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ExclusiveGateway sid-D370EFBF-A319-44D2-9A22-9E8EEFE87248
                _tokenState &= ~uint(8);
                if (conditions & 1 == 1) {
                    _tokenState |= 16; // Move to sid-5E468D82-5C58-4448-B00F-975F17DB1452
                } else {
                    _tokenState |= 32; // Default path to sid-219196E3-11E9-4006-A960-CBA666C8F5A7
                }
                continue;
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-5E468D82-5C58-4448-B00F-975F17DB1452 (prosledjivanje problema tehnickoj podrsci, taskID=4)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to sid-C87CD8DA-DBB1-49FF-80DF-7C6E9D6FB5D8
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-C87CD8DA-DBB1-49FF-80DF-7C6E9D6FB5D8 (dostavljanje resenja, taskID=5)
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 32; // Move to sid-219196E3-11E9-4006-A960-CBA666C8F5A7
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-219196E3-11E9-4006-A960-CBA666C8F5A7 (davanje instrukcija za resavanje problema, taskID=3)
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Move to EndEvent sid-737FA0BD-73C8-4891-9212-C94287D2BFF9
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // EndEvent sid-737FA0BD-73C8-4891-9212-C94287D2BFF9
                _tokenState = 0; // Terminate process
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}