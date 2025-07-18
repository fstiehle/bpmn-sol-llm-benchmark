// test meta-llama/llama-3.3-70b-instruct - two-shot at 2025-06-12T10:55:22.041Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_two_shot_sid_3413b861_8a47_41d3_8daf_a1e81bd3e518 {
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
                // <--- sid-0CB4AAC5-693A-4689-A62F-ED9E9AD3FC1E Slanje opisa problema --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-1A819D31-39BF-4D46-BCA2-B179558E994C Dobijanje detaljnog opisa problema --->
                if (2 == taskID && msg.sender == participants[3]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // <--- sid-95FC3A8B-EA99-429F-8CD6-660CB56644B7 Slanje resenja --->
                    if (3 == taskID && msg.sender == participants[5]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(4);
                        _tokenState |= 0;
                        break; // is end
                    }
                } else {
                    // <--- sid-C978C6C9-48E1-49A2-A2FA-65F0F7BC5B41 --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                if (conditions & 2 == 2) {
                    // <--- sid-B8C46AE2-A3B0-4B1F-BE47-9899F5B33EAA Slanje opisa problena --->
                    if (6 == taskID && msg.sender == participants[10]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(8);
                        _tokenState |= 16;
                        taskID = 0;
                        continue;
                    }
                } else {
                    // <--- sid-57C81B29-22B6-49FC-ACFA-7F9A22C75876 Slanje resenja --->
                    if (5 == taskID && msg.sender == participants[9]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(8);
                        _tokenState |= 32;
                        taskID = 0;
                        continue;
                    }
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-7D2DD5DA-0D4D-494E-8195-4923284FEB9F Slanje resenja --->
                if (7 == taskID && msg.sender == participants[13]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- end --->
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
