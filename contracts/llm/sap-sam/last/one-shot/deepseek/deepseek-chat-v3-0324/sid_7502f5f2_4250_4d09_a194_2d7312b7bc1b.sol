// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T17:32:23.426Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_7502f5f2_4250_4d09_a194_2d7312b7bc1b {
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
                // <--- sid-DBACF7D5-D007-4F25-A4E9-00E3DF72A2C5 slanje problema --->
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-960F19B5-909B-41FC-BC7A-0BCA2E01BEA5 dobijanje detaljnog opisa --->
                if (2 == id && msg.sender == participants[3]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
                // Default flow
                _tokenState &= ~uint(4);
                _tokenState |= 16;
                continue;
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-EB936A34-57FB-492F-914F-0C38A32ACCBA stanje resenja --->
                if (3 == id && msg.sender == participants[5]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-AE31756A-4ACA-419E-953F-348EF5858010 trazenje resenja --->
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    continue;
                }
                // Default flow
                _tokenState &= ~uint(32);
                _tokenState |= 128;
                continue;
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-351B7991-7029-4335-B071-8CC6646F7179 trazenje resenja --->
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- sid-F3EBD7C8-1788-48BB-B375-672376D51FE8 slanje resenja --->
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-360D1C00-730A-4CDE-BCEA-56A27C1BEBD8 slanje ressejna --->
                if (7 == id && msg.sender == participants[13]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
