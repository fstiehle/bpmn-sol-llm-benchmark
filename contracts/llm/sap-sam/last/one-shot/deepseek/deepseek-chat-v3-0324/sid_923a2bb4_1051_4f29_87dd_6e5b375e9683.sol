// test deepseek/deepseek-chat-v3-0324 - one-shot at 2025-06-13T19:32:01.816Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_one_shot_sid_923a2bb4_1051_4f29_87dd_6e5b375e9683 {
    uint public tokenState = 1;
    address[12] public participants;
    uint public conditions;
    
    constructor(address[12] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint taskID) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-CC04E9FF-9B18-42B9-8659-9795E407D833 Neues Ticket wird angelegt --->
                if (1 == taskID && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-69D7C076-711B-4D8C-940B-54C78B465664 Verschickt Nummer des Tickets als Bestaetigung --->
                if (2 == taskID && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-8307F677-3914-4976-BB3B-46E91FEF8124 Beginnt mit Anfragebearbeitung --->
                if (3 == taskID && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-5F138745-7938-4217-836B-B96910ECB793 fordert Informationen beim Kunden an --->
                if (4 == taskID && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- sid-E6E6D035-AA1B-48DA-A8A4-C8E2AF2029D5 sendet Loesung an Kunde --->
                if (5 == taskID && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-7280E92C-ECF4-46A5-A5E2-63309CC974E5 sendet erforderliche Informationen --->
                if (6 == taskID && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    taskID = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 64;
                    continue;
                }
                _tokenState &= ~uint(8);
                _tokenState |= 16;
                continue;
            }
            break;
        }
        tokenState = _tokenState;
    }
}
