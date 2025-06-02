// test GPT 4.1 - One Shot at 2025-06-02T19:29:43.708Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_sid_e4dcee7a_9a78_4f70_be4f_4d29d48b92fb {
    uint public tokenState = 1;
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;

        while (_tokenState != 0) {
            // <--- sid-EC58EE38-642E-435C-BD7C-5961E5EA7190: Klijent ima problem --->
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) { // Klijent
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // to sid-CE66FED6-A686-4096-B422-CD0BA169BE36
                    continue;
                }
            }
            // <--- sid-CE66FED6-A686-4096-B422-CD0BA169BE36: Dobijanje opisa problema --->
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[3]) { // Operater
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // to Gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14
                    continue;
                }
            }
            // <--- sid-1E0251F9-E26D-4B9D-BD82-825425624E08: Saopstavanje resenja --->
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[5]) { // Operater
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // end
                    break;
                }
            }
            // <--- sid-13670263-52E5-49D8-9F4B-0558669622F0: Pitanje podrske I nivoa --->
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[6]) { // B55E9BB8-73D7-4C3A-B520-708BBF4A6A9D
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // to Gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F
                    continue;
                }
            }
            // <--- sid-D4B484C1-78F8-4D81-957D-2DAF07E48494: Slanje resenja --->
            if (_tokenState & 256 == 256) {
                if (id == 4 && msg.sender == participants[9]) { // C9940571-785E-42CC-B469-5DA7A474E4C6
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 8; // to sid-1E0251F9-E26D-4B9D-BD82-825425624E08
                    continue;
                }
            }
            // <--- sid-6D099124-B421-417F-862D-8C820BA41D08: Pitanje za II nivo --->
            if (_tokenState & 1024 == 1024) {
                if (id == 5 && msg.sender == participants[10]) { // 297BBF18-D112-440E-9960-C1FBA5A536D9
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // to sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4
                    continue;
                }
            }
            // <--- sid-40F90B68-EAEA-43E5-8A15-DDE5DF91F5D4: II nivo daje resenje --->
            if (_tokenState & 2048 == 2048) {
                if (id == 6 && msg.sender == participants[13]) { // 3742B665-3EF0-43D7-9C3D-3D276D3427BE
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2048);
                    _tokenState |= 256; // to D4B484C1-78F8-4D81-957D-2DAF07E48494
                    continue;
                }
            }

            // --- Exclusive Gateway sid-15C3EEC7-4E35-4B6A-B7CC-8C2FB95ABC14 ---
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    // ne zna da resi (sid-12D77D4B-7601-44F0-9584-D53B9ED172D7)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // sid-13670263-52E5-49D8-9F4B-0558669622F0
                    continue;
                } else {
                    // default zna da resi (sid-33A8E44F-06B2-4533-A74B-F7050EDEE454)
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // sid-1E0251F9-E26D-4B9D-BD82-825425624E08
                    continue;
                }
            }

            // --- Exclusive Gateway sid-48B3C288-CF4E-4668-90E9-C6639F07A32F ---
            if (_tokenState & 32 == 32) {
                if (conditions & 1 == 1) {
                    // ne zna da resi (sid-9DB58BF7-4DA6-4FA7-9891-35B252277184)
                    _tokenState &= ~uint(32);
                    _tokenState |= 1024; // sid-6D099124-B421-417F-862D-8C820BA41D08
                    continue;
                } else {
                    // default zna da resi (sid-D440A563-2988-4875-AF79-8F6451742A5A)
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // sid-D4B484C1-78F8-4D81-957D-2DAF07E48494
                    continue;
                }
            }

            break;
        }

        tokenState = _tokenState;
    }
}