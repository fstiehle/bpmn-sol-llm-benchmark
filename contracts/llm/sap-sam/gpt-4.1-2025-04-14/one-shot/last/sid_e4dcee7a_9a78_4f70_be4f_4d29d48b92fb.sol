// test GPT 4.1 - One Shot at 2025-06-05T15:17:40.062Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
    // tokenState bitmask encodes active flow positions
    // Initial state: startEvent active (bit 1)
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 0: sid-EC58EE38-642E-435C-BD7C-5961E5EA7190 (Klijent ima problem) - initiating: participants[0]
    // 1: sid-CE66FED6-A686-4096-B422-CD0BA169BE36 (Dobijanje opisa problema) - initiating: participants[3]
    // 2: sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (Saopstavanje resenja) - initiating: participants[5]
    // 3: sid-13670263-52E5-49D8-9F4B-0558669622F0 (Pitanje podrske I nivoa) - initiating: participants[6]
    // 4: sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (Slanje resenja) - initiating: participants[9]
    // 5: sid-6D099124-B421-417F-862D-8C820BA41D08 (Pitanje za II nivo) - initiating: participants[10]
    // 6: sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (unnamed) - initiating: participants[13]

    function enact(uint taskID) external {
        uint _tokenState = tokenState;

        while(_tokenState != 0) {
            // Start Event (bit 1)
            if (_tokenState & 1 == 1) {
                // <--- sid-EC58EE38-642E-435C-BD7C-5961E5EA7190: Klijent ima problem --->
                if (taskID == 0 && msg.sender == participants[0]) {
                    // Transition: deactivate 1, activate 2
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }
            // sid-CE66FED6-A686-4096-B422-CD0BA169BE36: Dobijanje opisa problema (bit 2)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[3]) {
                    // Transition: deactivate 2, activate gateway (bit 4)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            // Exclusive Gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14 (bit 4)
            if (_tokenState & 4 == 4) {
                bool transitioned = false;
                // Outgoing 1: "zna da resi" -> sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (bit 8)
                // Outgoing 2: "conditions & 1 == 1" -> sid-13670263-52E5-49D8-9F4B-0558669622F0 (bit 16)
                if ((conditions & 1 == 1)) {
                    // Take conditional branch to bit 16
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    transitioned = true;
                    continue;
                }
                // Default branch is to sid-1E0251F9-E26D-4B9D-BD82-825425624E08 (bit 8)
                if (!transitioned) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            // sid-1E0251F9-E26D-4B9D-BD82-825425624E08: Saopstavanje resenja (bit 8)
            if (_tokenState & 8 == 8) {
                if (taskID == 2 && msg.sender == participants[5]) {
                    // Transition: deactivate 8, activate end (bit 512)
                    _tokenState &= ~uint(8);
                    _tokenState |= 512;
                    continue;
                }
            }
            // sid-13670263-52E5-49D8-9F4B-0558669622F0: Pitanje podrske I nivoa (bit 16)
            if (_tokenState & 16 == 16) {
                if (taskID == 3 && msg.sender == participants[6]) {
                    // Transition: deactivate 16, activate gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F (bit 32)
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    continue;
                }
            }
            // Exclusive Gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F (bit 32)
            if (_tokenState & 32 == 32) {
                bool transitioned = false;
                // Outgoing 1: "zna da resi" -> sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (bit 64)
                // Outgoing 2: "conditions & 2 == 2" -> sid-6D099124-B421-417F-862D-8C820BA41D08 (bit 128)
                if ((conditions & 2 == 2)) {
                    // Take conditional branch to bit 128
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    transitioned = true;
                    continue;
                }
                // Default branch is to sid-D4B484C1-78F8-4D81-957D-2DAF07E48494 (bit 64)
                if (!transitioned) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494: Slanje resenja (bit 64)
            if (_tokenState & 64 == 64) {
                if (taskID == 4 && msg.sender == participants[9]) {
                    // Transition: deactivate 64, activate 8 (sid-1E0251F9-E26D-4B9D-BD82-825425624E08)
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    continue;
                }
            }
            // sid-6D099124-B421-417F-862D-8C820BA41D08: Pitanje za II nivo (bit 128)
            if (_tokenState & 128 == 128) {
                if (taskID == 5 && msg.sender == participants[10]) {
                    // Transition: deactivate 128, activate sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (bit 256)
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }
            // sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4 (bit 256)
            if (_tokenState & 256 == 256) {
                if (taskID == 6 && msg.sender == participants[13]) {
                    // Transition: deactivate 256, activate 64 (sid-D4B484C1-78F8-4D81-957D-2DAF07E48494)
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    continue;
                }
            }
            // End Event (bit 512)
            if (_tokenState & 512 == 512) {
                // End event reached, deactivate all
                _tokenState = 0;
                break;
            }
            break;
        }

        tokenState = _tokenState;
    }
}