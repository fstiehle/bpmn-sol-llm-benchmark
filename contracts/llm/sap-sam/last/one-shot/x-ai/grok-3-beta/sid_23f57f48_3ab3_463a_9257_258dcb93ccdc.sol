// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:40:57.593Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
    uint public tokenState = 1; // Start event bit
    address[38] public participants;
    uint public conditions;

    constructor(address[38] memory _participants) {
        participants = _participants;
        tokenState = 1; // Initialize with Start Event active
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent to Task 1
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) { // sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to parallel gateway sid-8A856537-7AC4-4586-BC1A-66678EC8B506
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) { // Parallel Gateway Diverging sid-8A856537-7AC4-4586-BC1A-66678EC8B506
                _tokenState &= ~uint(2);
                _tokenState |= 4; // Activate Task 2 (sid-87411925-6ACB-4399-9FDF-AB3A02B97185)
                _tokenState |= 8; // Activate Task 3 (sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44)
                continue;
            }
            if (_tokenState & 4 == 4) { // Task 2: sid-87411925-6ACB-4399-9FDF-AB3A02B97185
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to parallel gateway converging sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) { // Task 3: sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to parallel gateway converging sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 48 == 48) { // Parallel Gateway Converging sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3
                _tokenState &= ~uint(48);
                _tokenState |= 64; // Activate Task 4 (sid-79F7C5CA-0BB9-412D-82B7-243830F73242)
                continue;
            }
            if (_tokenState & 64 == 64) { // Task 4: sid-79F7C5CA-0BB9-412D-82B7-243830F73242
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Move to parallel gateway sid-C8749F03-EA4F-4134-A956-99029BA412C0
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) { // Parallel Gateway Diverging sid-C8749F03-EA4F-4134-A956-99029BA412C0
                _tokenState &= ~uint(128);
                _tokenState |= 256; // Activate Task 5 (sid-B069E27A-D33B-46B4-93D2-8368A4696004)
                _tokenState |= 512; // Activate Task 6 (sid-B6FC6638-517A-4341-8D5D-766673E6C7BC)
                continue;
            }
            if (_tokenState & 256 == 256) { // Task 5: sid-B069E27A-D33B-46B4-93D2-8368A4696004
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024; // Activate Task 7 (sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) { // Task 6: sid-B6FC6638-517A-4341-8D5D-766673E6C7BC
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048; // Activate Task 8 (sid-C711548A-C1DA-42C7-B342-7CE7FC79369C)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) { // Task 7: sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 4096; // Move to parallel gateway converging sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) { // Task 8: sid-C711548A-C1DA-42C7-B342-7CE7FC79369C
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192; // Activate Task 9 (sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) { // Task 9: sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 16384; // Move to parallel gateway converging sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 20480 == 20480) { // Parallel Gateway Converging sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3
                _tokenState &= ~uint(20480);
                _tokenState |= 32768; // Move to parallel gateway diverging sid-49433071-9A98-4150-BCC9-19A518103FFC
                continue;
            }
            if (_tokenState & 32768 == 32768) { // Parallel Gateway Diverging sid-49433071-9A98-4150-BCC9-19A518103FFC
                _tokenState &= ~uint(32768);
                _tokenState |= 65536; // Activate Task 10 (sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1)
                _tokenState |= 131072; // Activate Task 11 (sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D)
                continue;
            }
            if (_tokenState & 65536 == 65536) { // Task 10: sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 262144; // Move to parallel gateway converging sid-59FD9696-33BA-4281-B983-16C678D60C29 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 131072 == 131072) { // Task 11: sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D
                if (11 == id && msg.sender == participants[20]) {
                    _tokenState &= ~uint(131072);
                    _tokenState |= 524288; // Move to parallel gateway converging sid-59FD9696-33BA-4281-B983-16C678D60C29 (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 786432 == 786432) { // Parallel Gateway Converging sid-59FD9696-33BA-4281-B983-16C678D60C29
                _tokenState &= ~uint(786432);
                _tokenState |= 1048576; // Activate Task 12 (sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0)
                continue;
            }
            if (_tokenState & 1048576 == 1048576) { // Task 12: sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0
                if (12 == id && msg.sender == participants[22]) {
                    _tokenState &= ~uint(1048576);
                    _tokenState |= 2097152; // Activate Task 13 (sid-36AEC271-211C-45AF-98E7-A36DCC243FE2)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2097152 == 2097152) { // Task 13: sid-36AEC271-211C-45AF-98E7-A36DCC243FE2
                if (13 == id && msg.sender == participants[24]) {
                    _tokenState &= ~uint(2097152);
                    _tokenState |= 4194304; // Move to exclusive gateway sid-6F6BBE1D-EDBA-459B-9FF8-096332A86F9D
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4194304 == 4194304) { // Exclusive Gateway sid-6F6BBE1D-EDBA-459B-9FF8-096332A86F9D
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4194304);
                    _tokenState |= 0; // End event, process termination
                    break;
                } else {
                    _tokenState &= ~uint(4194304);
                    _tokenState |= 8388608; // Default path to Task 14 (sid-05B03332-15F8-4230-9323-5EB426F59D83)
                    continue;
                }
            }
            if (_tokenState & 8388608 == 8388608) { // Task 14: sid-05B03332-15F8-4230-9323-5EB426F59D83
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(8388608);
                    _tokenState |= 16777216; // Move to exclusive gateway sid-F5E250E9-8224-4C08-96CC-5B213FE8E878
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16777216 == 16777216) { // Exclusive Gateway sid-F5E250E9-8224-4C08-96CC-5B213FE8E878
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(16777216);
                    _tokenState |= 33554432; // Task 16 (sid-8224411A-EC96-46EA-9628-AC493844BADA)
                    continue;
                } else {
                    _tokenState &= ~uint(16777216);
                    _tokenState |= 67108864; // Default path to Task 15 (sid-76B84570-72AA-46A3-B8CC-E05210FBA769)
                    continue;
                }
            }
            if (_tokenState & 67108864 == 67108864) { // Task 15: sid-76B84570-72AA-46A3-B8CC-E05210FBA769
                if (15 == id && msg.sender == participants[28]) {
                    _tokenState &= ~uint(67108864);
                    _tokenState |= 134217728; // Activate Task 17 (sid-AA70870B-9C86-4611-881F-538762AEDBBF)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 33554432 == 33554432) { // Task 16: sid-8224411A-EC96-46EA-9628-AC493844BADA
                if (16 == id && msg.sender == participants[30]) {
                    _tokenState &= ~uint(33554432);
                    _tokenState |= 268435456; // Move to converging exclusive gateway sid-7D650B82-5367-4CA4-B00C-EECE35C1BEDD (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 134217728 == 134217728) { // Task 17: sid-AA70870B-9C86-4611-881F-538762AEDBBF
                if (17 == id && msg.sender == participants[32]) {
                    _tokenState &= ~uint(134217728);
                    _tokenState |= 536870912; // Activate Task 18 (sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 536870912 == 536870912) { // Task 18: sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B
                if (18 == id && msg.sender == participants[34]) {
                    _tokenState &= ~uint(536870912);
                    _tokenState |= 1073741824; // Move to converging exclusive gateway sid-7D650B82-5367-4CA4-B00C-EECE35C1BEDD (partial)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1342177280 == 1342177280) { // Exclusive Gateway Converging sid-7D650B82-5367-4CA4-B00C-EECE35C1BEDD
                _tokenState &= ~uint(1342177280);
                _tokenState |= 2147483648; // Activate Task 19 (sid-61585682-6A88-4404-A770-8142C2B15ACC)
                continue;
            }
            if (_tokenState & 2147483648 == 2147483648) { // Task 19: sid-61585682-6A88-4404-A770-8142C2B15ACC
                if (19 == id && msg.sender == participants[36]) {
                    _tokenState &= ~uint(2147483648);
                    _tokenState |= 0; // End event, terminate process
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}