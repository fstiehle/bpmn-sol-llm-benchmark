// test GPT 4.1 - One Shot Revised at 2025-06-05T15:21:52.299Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_rev_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
    // participants: 14
    address[14] public participants;
    uint public tokenState = 1;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // mapping of taskID to choreographyTask
    // 0: sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 (Klijent ima problem) - initiator: participants[0]
    // 1: sid-CE66FED6-A686-4096-B422-CD0BA169BE36 (Dobijanje opisa problema) - initiator: participants[3]
    // 2: sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (Saopstavanje resenja) - initiator: participants[5]
    // 3: sid-13670263-52E5-49D8-9F4B-0558669622F0 (Pitanje podrske I nivoa) - initiator: participants[6]
    // 4: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (Slanje resenja) - initiator: participants[9]
    // 5: sid-6D099124-B421-417F-862D-8C820BA41D08 (Pitanje za II nivo) - initiator: participants[10]
    // 6: sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 () - initiator: participants[13]

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {

            // sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 (0) -- bit 1
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }

            // sid-CE66FED6-A686-4096-B422-CD0BA169BE36 (1) -- bit 2
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }

            // sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (2) -- bit 4
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[5]) {
                    _tokenState &= ~uint(4);
                    // End event reached
                    _tokenState = 0;
                    break;
                }
            }

            // sid-13670263-52E5-49D8-9F4B-0558669622F0 (3) -- bit 8
            if (_tokenState & 8 == 8) {
                if (id == 3 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }

            // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (4) -- bit 16
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[9]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 4;
                    continue;
                }
            }

            // sid-6D099124-B421-417F-862D-8C820BA41D08 (5) -- bit 32
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }

            // sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (6) -- bit 64
            if (_tokenState & 64 == 64) {
                if (id == 6 && msg.sender == participants[13]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 16;
                    continue;
                }
            }

            // Exclusive Gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14 after bit 4 (after task 1)
            // incoming: 4, outgoing: 4 -> 4 (sid-1E0251F9-E26D-4B9D-BD82-825425624E08)
            // outgoing: 4 -> 8 (sid-13670263-52E5-49D8-9F4B-0558669622F0)
            // "zna da resi" is default (sid-33A8E44F-06B2-4533-A74B-F7050EDEE454), sid-12D77D4B-7601-44F0-9584-D53B9ED172D7 is conditional
            // sid-12D77D4B-7601-44F0-9584-D53B9ED172D7, condition: conditions & 1 == 1

            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // conditions & 1 == 1, go to sid-13670263-52E5-49D8-9F4B-0558669622F0 (bit 8)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    // default: sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (bit 4)
                    // No state change, as it's already bit 4 (but to avoid infinite loop, break)
                    break;
                }
            }

            // Exclusive Gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F after bit 16 (after task 3)
            // incoming: 16, outgoing: 16 -> 16 (sid-D4B484C1-78F8-4D81-957D-2DAF07E48494), 16 -> 32 (sid-6D099124-B421-417F-862D-8C820BA41D08)
            // "zna da resi" is default (sid-D440A563-2988-4875-AF79-8F6451742A5A), sid-9DB58BF7-4DA6-4FA7-9891-35B252277184 is conditional
            // sid-9DB58BF7-4DA6-4FA7-9891-35B252277184, condition: conditions & 2 == 2

            if (_tokenState & 16 == 16) {
                if (conditions & 2 == 2) {
                    // conditions & 2 == 2, go to sid-6D099124-B421-417F-862D-8C820BA41D08 (bit 32)
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                } else {
                    // default: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (bit 16)
                    // No state change, as it's already bit 16 (but to avoid infinite loop, break)
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}