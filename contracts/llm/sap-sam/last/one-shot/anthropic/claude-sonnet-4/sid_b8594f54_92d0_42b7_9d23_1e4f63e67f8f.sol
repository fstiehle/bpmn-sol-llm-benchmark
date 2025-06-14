// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T05:33:15.273Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_b8594f54_92d0_42b7_9d23_1e4f63e67f8f {
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-26CB3185-CCC5-456F-B2ED-69FD7984012C Slanje problema
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-F46217C9-37D7-4CDC-9818-CFCE7C3F78F5 Dobijanje detaljnijeg opisa problema
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-A28F253A-3BCF-4582-ACD3-195B68766D90 Slanje resenja
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-7626F4C0-564C-4869-A6D7-2540D55E5360 Pitanje podrske prvog nivoa
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-F61AC55B-43D7-4034-9F4E-CB28D2A06362 Slanje resenja
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-D68FC3ED-F557-4118-ADE0-BEFEE27D4FD2 Pitanje podrske II nivoa
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-0D7629F1-CA9A-490A-9642-3AE48DAF9070 Slanje resenja
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ExclusiveGateway sid-C4A16CD0-061C-432C-BE4E-C9EEC4C84C3C
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ExclusiveGateway sid-396483CB-FA0F-455F-94CE-5F948725DA9E
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
