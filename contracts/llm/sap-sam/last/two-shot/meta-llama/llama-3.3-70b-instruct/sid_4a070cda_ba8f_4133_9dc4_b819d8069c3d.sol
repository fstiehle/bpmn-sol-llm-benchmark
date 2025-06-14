// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T11:03:25.339Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_4a070cda_ba8f_4133_9dc4_b819d8069c3d {
    uint public tokenState = 1;
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
            if (_tokenState & 1 == 1) {
                // <--- sid-8382BE04-333B-4CFB-8F63-AF54B9DC4243 place & #10;book order --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-6F700DF7-4544-413A-8DED-F158468BA83E place & confirm #10;back order --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 12;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-A9CAF9F4-C96A-433F-A9E2-B1852E424450 send invoice --->
                if (3 == taskID && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-FA1EC6B2-A97F-451B-848C-2653F126F817 send shipment information --->
                if (4 == taskID && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-0B14E175-63F6-4EA0-A1A3-3EBC30E807B7 issue #10;shipment --->
                if (5 == taskID && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-FDFE5AC6-2C1C-4A5D-8208-747618BC9359 deliver shipment --->
                if (6 == taskID && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-05AA275D-E5B4-4A74-BA38-E31D1EC4EDB9 send payment --->
                if (7 == taskID && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState = 0;
                    break; // is end
                }
            }
            if (_tokenState & 12 == 12) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(12);
                    _tokenState |= 4;
                    continue;
                } else {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(12);
                    _tokenState |= 8;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
