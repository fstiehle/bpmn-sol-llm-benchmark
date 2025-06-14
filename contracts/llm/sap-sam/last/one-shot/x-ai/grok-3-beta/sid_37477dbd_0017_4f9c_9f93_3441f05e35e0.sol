// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:46:50.945Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_37477dbd_0017_4f9c_9f93_3441f05e35e0 {
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
            // Start Event to Task 1 (sid-6F49A10A-9F81-4E12-A271-A6014D43428B)
            if (_tokenState & 1 == 1) {
                // <--- sid-6F49A10A-9F81-4E12-A271-A6014D43428B slanje opisa problema --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to next task
                    id = 0;
                    continue;
                }
            }
            // Task 2 (sid-0F1C9106-5B3F-4DE4-A575-F5210663165F)
            if (_tokenState & 2 == 2) {
                // <--- sid-0F1C9106-5B3F-4DE4-A575-F5210663165F dobijanje detaljnog opisa problema --->
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to gateway
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway (sid-8AB97A5D-F1EB-476F-9EE5-9A126E191C7A)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to Task 4 (sid-AD18DEB2-3CA2-4736-BBD1-884125893D49)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Default path to Task 3 (sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4)
                    continue;
                }
            }
            // Task 4 (sid-AD18DEB2-3CA2-4736-BBD1-884125893D49)
            if (_tokenState & 8 == 8) {
                // <--- sid-AD18DEB2-3CA2-4736-BBD1-884125893D49 slanje opisa problema --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to next gateway
                    id = 0;
                    continue;
                }
            }
            // Exclusive Gateway (sid-451230A1-DC10-4A56-AC3B-F2E67D46DDAE)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to Task 6 (sid-D1239A49-2E49-4621-9FD3-E699393B9961)
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Default path to Task 5 (sid-661CD640-1BBE-4CA7-A659-6B26B74E592B)
                    continue;
                }
            }
            // Task 6 (sid-D1239A49-2E49-4621-9FD3-E699393B9961)
            if (_tokenState & 64 == 64) {
                // <--- sid-D1239A49-2E49-4621-9FD3-E699393B9961 slanje opisa problema --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Task 7
                    id = 0;
                    continue;
                }
            }
            // Task 7 (sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F)
            if (_tokenState & 256 == 256) {
                // <--- sid-7F3063B4-FA99-4875-9D67-5D40D4933C1F slanje resenja --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128; // Move to Task 5
                    id = 0;
                    continue;
                }
            }
            // Task 5 (sid-661CD640-1BBE-4CA7-A659-6B26B74E592B)
            if (_tokenState & 128 == 128) {
                // <--- sid-661CD640-1BBE-4CA7-A659-6B26B74E592B slanje resenja --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 16; // Move to Task 3
                    id = 0;
                    continue;
                }
            }
            // Task 3 (sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4)
            if (_tokenState & 16 == 16) {
                // <--- sid-CB6E348B-58F4-4DBB-BD90-B5010487C5C4 slanje resenja --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // End of process
                    break; // Process termina
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}