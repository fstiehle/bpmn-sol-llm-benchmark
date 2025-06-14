// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:01:38.993Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_1822c7e8_cade_4df0_a6d8_f7f836656cd0 {
    uint public tokenState = 1;
    address[28] public participants;
    uint public conditions;

    constructor(address[28] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask(sid-DA84BA08-B7DF-4E7F-B502-F2C789669FAE) Send order --->
                if (1 == taskID && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ExclusiveGateway(sid-C8A24191-AB00-4C7A-A503-3C350549E96E) --->
                if (conditions & 1 == 1) {
                    // <---  auto transition to sid-879DCB4A-9EF3-4F4A-AE92-4B95383350FF  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue; 
                } else {
                    // <---  auto transition to sid-3E1B879A-1EC2-46C5-B4DB-77605BBAE851  --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    continue; 
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- ChoreographyTask(sid-879DCB4A-9EF3-4F4A-AE92-4B95383350FF) Place order --->
                if (3 == taskID && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- ChoreographyTask(sid-3E1B879A-1EC2-46C5-B4DB-77605BBAE851) Place order --->
                if (2 == taskID && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- ParallelGateway(sid-B9C506B2-01F4-4AE4-8691-779ED8E74854) --->
                // <---  auto transition to multiple tasks  --->
                _tokenState &= ~uint(16);
                _tokenState |= 64;
                _tokenState |= 128;
                continue; 
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask(sid-0EBA2E25-63DB-4C3A-95B2-CFDE541B2006) Request parts --->
                if (4 == taskID && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 256;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask(sid-E4662327-03C0-473C-9B95-A3FA584B1748) Request parts --->
                if (9 == taskID && msg.sender == participants[16]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 512;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- ChoreographyTask(sid-7639E8EE-B9E6-4863-B197-B935A2CF4455) Request parts --->
                if (10 == taskID && msg.sender == participants[18]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(128);
                    _tokenState |= 1024;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- ChoreographyTask(sid-15A11F47-1F33-4803-B8F7-440795284DB1) Send results --->
                if (5 == taskID && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 2048;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- ChoreographyTask(sid-65C3DC22-C1E8-4A6D-B677-0FE4B441CD73) Send results --->
                if (11 == taskID && msg.sender == participants[20]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(512);
                    _tokenState |= 4096;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 1024 == 1024) {
                // <--- ChoreographyTask(sid-EF303951-32C0-4491-AE3A-AD89232CEADD) Send results --->
                if (12 == taskID && msg.sender == participants[22]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1024);
                    _tokenState |= 8192;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- ChoreographyTask(sid-6E071B7B-C0EB-4879-A1DF-B1A344799186) Request parts --->
                if (6 == taskID && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2048);
                    _tokenState |= 16384;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 4096 == 4096) {
                // <--- ParallelGateway(sid-77F63C0A-43FF-460B-BA77-C0EF3860813A) --->
                // <---  auto transition to multiple tasks  --->
                _tokenState &= ~uint(4096);
                _tokenState |= 32768;
                continue; 
            }
            if (_tokenState & 8192 == 8192) {
                // <--- ChoreographyTask(sid-529BCFB1-7900-4F61-96AC-0BA312F038FA) Send F. Results --->
                if (13 == taskID && msg.sender == participants[24]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8192);
                    _tokenState |= 65536;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 16384 == 16384) {
                // <--- ChoreographyTask(sid-3F4A95BF-34C1-44AB-9E08-FBE4E1490C03) Send results --->
                if (7 == taskID && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16384);
                    _tokenState |= 131072;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 32768 == 32768) {
                // <--- ChoreographyTask(sid-FC47CCE2-1C2B-4A27-9705-92DA082B74E9) Send F. Results --->
                if (8 == taskID && msg.sender == participants[14]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32768);
                    _tokenState |= 262144;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 65536 == 65536) {
                // <--- ExclusiveGateway(sid-6E02B7C6-497A-4E51-AD43-18DC80FCEE06) --->
                // <---  auto transition to sid-4FACF340-7FFA-4571-B498-DEE0460BB685  --->
                _tokenState &= ~uint(65536);
                _tokenState |= 524288;
                continue; 
            }
            if (_tokenState & 131072 == 131072) {
                // <--- ChoreographyTask(sid-E4662327-03C0-473C-9B95-A3FA584B1748) Request parts --->
                if (9 == taskID && msg.sender == participants[16]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(131072);
                    _tokenState |= 1048576;
                    taskID = 0;
                    continue; 
                }
            }
            if (_tokenState & 262144 == 262144) {
                // <--- ChoreographyTask(sid-4FACF340-7FFA-4571-B498-DEE0460BB685) Reply --->
                if (14 == taskID && msg.sender == participants[26]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(262144);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
