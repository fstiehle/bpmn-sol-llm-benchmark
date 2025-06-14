// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:16:53.220Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_b8594f54_92d0_42b7_9d23_1e4f63e67f8f {
    uint public tokenState = 1; // Start with the start event active
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
            if (_tokenState & 1 == 1) {
                // StartEvent sid-B255CF92-961A-4EDC-AE9A-1ED9B30E13EF auto transition
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-26CB3185-CCC5-456F-B2ED-69FD7984012C (Task 1)
                continue;
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-26CB3185-CCC5-456F-B2ED-69FD7984012C (Task 1: Slanje problema)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-F46217C9-37D7-4CDC-9818-CFCE7C3F78F5 (Task 2)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-F46217C9-37D7-4CDC-9818-CFCE7C3F78F5 (Task 2: Dobijanje detaljnijeg opisa problema)
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Activate sid-C4A16CD0-061C-432C-BE4E-C9EEC4C84C3C (Gateway 1)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ExclusiveGateway sid-C4A16CD0-061C-432C-BE4E-C9EEC4C84C3C (Operater zna resenje?)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-7626F4C0-564C-4869-A6D7-2540D55E5360 (Task 4)
                    continue;
                } else {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Default path to sid-A28F253A-3BCF-4582-ACD3-195B68766D90 (Task 3)
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-7626F4C0-564C-4869-A6D7-2540D55E5360 (Task 4: Pitanje podrske prvog nivoa)
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Activate sid-396483CB-FA0F-455F-94CE-5F948725DA9E (Gateway 2)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ExclusiveGateway sid-396483CB-FA0F-455F-94CE-5F948725DA9E (Podrska prvog nivoa zna da resi?)
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate sid-D68FC3ED-F557-4118-ADE0-BEFEE27D4FD2 (Task 6)
                    continue;
                } else {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Default path to sid-F61AC55B-43D7-4034-9F4E-CB28D2A06362 (Task 5)
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-D68FC3ED-F557-4118-ADE0-BEFEE27D4FD2 (Task 6: Pitanje podrske II nivoa)
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Activate sid-0D7629F1-CA9A-490A-9642-3AE48DAF9070 (Task 7)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-0D7629F1-CA9A-490A-9642-3AE48DAF9070 (Task 7: Slanje resenja)
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 256; // Activate sid-F61AC55B-43D7-4034-9F4E-CB28D2A06362 (Task 5)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-F61AC55B-43D7-4034-9F4E-CB28D2A06362 (Task 5: Slanje resenja)
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 32; // Activate sid-A28F253A-3BCF-4582-ACD3-195B68766D90 (Task 3)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-A28F253A-3BCF-4582-ACD3-195B68766D90 (Task 3: Slanje resenja)
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 1024; // Activate end event sid-BED98BB1-2E83-4553-8E94-41837DC288A3
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 1024 == 1024) {
                // EndEvent sid-BED98BB1-2E83-4553-8E94-41837DC288A3
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}