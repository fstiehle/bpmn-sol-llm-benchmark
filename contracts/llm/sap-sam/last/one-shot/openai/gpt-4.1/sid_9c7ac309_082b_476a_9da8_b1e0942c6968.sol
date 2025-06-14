// test openai/gpt-4.1 - one-shot at 2025-06-12T00:00:21.687Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_9c7ac309_082b_476a_9da8_b1e0942c6968 {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // sid-91108EB7-E6BC-4698-B899-E87A6F6286BA: Antragsformular uebermitteln
            // taskID = 1, initiatingParticipant = 0
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // sid-B354A127-0A5D-457E-940F-A5FD6B93DAB9: Formular weiterleiten
            // taskID = 2, initiatingParticipant = 2
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // sid-839A0098-79BF-4A7B-8859-9536463ECE67: Treffen Entscheidung
            // taskID = 3, initiatingParticipant = 4
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            // Gateway: sid-E637D176-D990-4BDB-A59F-D64F14F9125F (exclusive, diverging)
            // incoming: 8 (from Treffen Entscheidung)
            // outgoing: 16 (Vertrag_wird_abgeschlossen), 32 (informiert_ueber_Ablehnung)
            // default: 16 (sid-E10DE3F3-889C-408B-8966-5821E2E815FB)
            if (_tokenState & 8 == 8) {
                bool didTransition = false;
                // sid-E1A8154F-5988-455A-8D92-99186BCC6C91: conditionExpression = conditions & 1 == 1, target = 32 (informiert_ueber_Ablehnung)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    didTransition = true;
                    continue;
                }
                // Default: sid-E10DE3F3-889C-408B-8966-5821E2E815FB -> Vertrag_wird_abgeschlossen (16)
                if (!didTransition) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
            }
            // sid-62FE5728-7B51-4DEC-B05A-F3782899E75F: Vertrag_wird_abgeschlossen
            // taskID = 4, initiatingParticipant = 6
            if (_tokenState & 16 == 16) {
                if (id == 4 && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    // End event reached
                    _tokenState = 0;
                    break;
                }
            }
            // sid-E554BFD8-A719-4C64-A76E-20B9E08151DB: informiert_ueber_Ablehnung
            // taskID = 5, initiatingParticipant = 8
            if (_tokenState & 32 == 32) {
                if (id == 5 && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    // End event reached
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}