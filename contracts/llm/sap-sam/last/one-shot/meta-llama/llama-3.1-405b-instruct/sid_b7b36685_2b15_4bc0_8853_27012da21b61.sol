// test meta-llama/llama-3.1-405b-instruct - one-shot at 2025-06-12T13:54:36.708Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_1_405b_instruct_one_shot_sid_b7b36685_2b15_4bc0_8853_27012da21b61 {
    uint public tokenState = 1;
    address[26] public participants;
    uint public conditions;

    constructor(address[26] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_1vnykqp interacted by homepage --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_16lc74v login --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- Gateway --->
                if (conditions & 1 == 1) {
                    // <---  auto transition  --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue; 
                }
                // <---  default transition  --->
                _tokenState &= ~uint(4);
                _tokenState |= 16;
                continue; 
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask_929FD353 give staff access --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_BFF58372 give normal access --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- Gateway --->
                // <---  auto transition  --->
                _tokenState &= ~uint(32);
                _tokenState |= 128;
                continue; 
            }
            if (_tokenState & 64 == 64) {
                // <--- Gateway --->
                // <---  auto transition  --->
                _tokenState &= ~uint(64);
                _tokenState |= 256;
                continue; 
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask_988EA705 manage employees --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask_2ECC1D34 manage users --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- ChoreographyTask_055127F3 check return car list --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- Gateway --->
                // <---  auto transition  --->
                _tokenState &= ~uint(1024);
                _tokenState |= 4096;
                continue; 
            }
            if (_tokenState & 2048 == 2048) {
                // <--- ChoreographyTask_7E766AF1 search car --->
                if (8 == id && msg.sender == participants[14]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- ChoreographyTask_70E19713 recommend car --->
                if (9 == id && msg.sender == participants[16]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4096);
                    _tokenState |= 16384;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 8192 == 8192) {
                // <--- ChoreographyTask_F1FBD02F access FAQ page --->
                if (10 == id && msg.sender == participants[18]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8192);
                    _tokenState |= 32768;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 16384 == 16384) {
                // <--- ChoreographyTask_A399A183 access contact us page and send issues --->
                if (11 == id && msg.sender == participants[20]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16384);
                    _tokenState |= 65536;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 32768 == 32768) {
                // <--- ChoreographyTask_EF340667 edit personal information --->
                if (12 == id && msg.sender == participants[22]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32768);
                    _tokenState |= 131072;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 65536 == 65536) {
                // <--- ChoreographyTask_08B2CDC1 notify changes are updated --->
                if (13 == id && msg.sender == participants[24]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(65536);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
