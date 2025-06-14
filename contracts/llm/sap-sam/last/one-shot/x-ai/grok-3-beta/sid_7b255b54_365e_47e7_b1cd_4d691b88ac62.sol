// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:01:15.872Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_7b255b54_365e_47e7_b1cd_4d691b88ac62 {
    uint public tokenState = 1; // Starting with the StartEvent
    address[14] public participants;
    uint public conditions;

    constructor(address[14] memory _participants) {
        participants = _participants;
        tokenState = 1; // Initialize to StartEvent
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // StartEvent to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to first ChoreographyTask (sid-E4BF5698-26B0-4E53-9134-68F4641D06BE)
                continue;
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-E4BF5698-26B0-4E53-9134-68F4641D06BE Soitto ravintolaan --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Gateway (sid-4065B97C-BDFB-41F0-825D-40215F5250DC)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- Exclusive Gateway sid-4065B97C-BDFB-41F0-825D-40215F5250DC Onko poytia vapaana? --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 128; // Move to EndEvent (sid-D451DF8D-1932-4D0A-9C89-044BD06504F1) via condition
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to default path ChoreographyTask (sid-E4C327C5-07CC-4A04-9106-8212468451FB)
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-E4C327C5-07CC-4A04-9106-8212468451FB Merkitse varaus --->
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to next ChoreographyTask (sid-13BFFF3F-179A-4144-90F1-7A96B24639B9)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-13BFFF3F-179A-4144-90F1-7A96B24639B9 Asiakas saapuu ravintolaan --->
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to next ChoreographyTask (sid-32FA6611-B7ED-4132-ACCA-8EDED99E85B9)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-32FA6611-B7ED-4132-ACCA-8EDED99E85B9 Tilaus --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to next ChoreographyTask (sid-75A7D705-28CA-46DE-AC88-687810E8BEC3)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-75A7D705-28CA-46DE-AC88-687810E8BEC3 Ruokailu --->
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to next ChoreographyTask (sid-4BB8EBFD-FE07-4324-8F91-9D5FDC116C98)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-4BB8EBFD-FE07-4324-8F91-9D5FDC116C98 Lasku --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Move to next ChoreographyTask (sid-7788CFE4-B6C6-4A0C-B971-D820C58A6533)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // <--- sid-7788CFE4-B6C6-4A0C-B971-D820C58A6533 Asiakas on maksanut laskun --->
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 128; // Move to EndEvent (sid-D451DF8D-1932-4D0A-9C89-044BD06504F1)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- EndEvent sid-D451DF8D-1932-4D0A-9C89-044BD06504F1 --->
                _tokenState = 0; // Process termination
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}