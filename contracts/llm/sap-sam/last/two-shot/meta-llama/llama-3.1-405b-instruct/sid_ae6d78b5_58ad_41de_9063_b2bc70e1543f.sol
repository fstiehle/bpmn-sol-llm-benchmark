// test meta-llama/llama-3.1-405b-instruct - two-shot at 2025-06-12T16:40:08.190Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_two_shot_sid_ae6d78b5_58ad_41de_9063_b2bc70e1543f {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState!= 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-365F91D0-DD9F-486E-B83C-DECBCA9A7B0A GPA Conversion --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-FDC6DD88-3121-4EC4-BFBA-DFF7B6402410 Check for plagiarism --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-B2BADF13-36D1-4B5D-AE77-E09232974D90 Assess application letter --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-EE6F5910-1D15-4F9C-8C28-72AD4D9070D2 Assign ranking --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-C569B56D-1EA0-46C8-81A4-12C4216C6406 Application marked 'failed' --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-6AEC28B8-8F55-4AE8-908F-F60609161299 Create preliminary list of applications --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 2 == 2) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
