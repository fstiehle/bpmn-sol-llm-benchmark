// test GPT 4.1 - One Shot at 2025-06-02T19:29:50.846Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_sid_e6317f9e_4d23_4a94_bc7b_f1e509cf531a {
    // Participants: 0-Guest, 1-ARS, 2-ARS, 3-Host, 4-Host, 5-ARS
    address[6] public participants;
    uint public conditions;
    // tokenState bits:
    // 1: at Request Reservation
    // 2: at Inform Host
    // 4: at Accept Reservation
    // 8: at End (Reservation accepted)
    uint public tokenState = 1;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    // taskID mapping:
    // 0: sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 (Request Reservation), initiatingParticipantRef: sid-7DBFC1E2-3F1E-42FB-99DF-C2F204BE2E90 (0)
    // 1: sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 (Inform Host), initiatingParticipantRef: sid-4519EFA1-14A7-4803-98EA-58849BC4EE52 (2)
    // 2: sid-14F93670-7F19-4E8D-985B-652CC65D24D6 (Accept Reservation), initiatingParticipantRef: sid-AAE00E03-B197-4DB9-91A0-488B36456775 (4)

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Request Reservation
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // Task: Request Reservation
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    continue;
                }
            }
            // Inform Host
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[2]) {
                    // Task: Inform Host
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            // Accept Reservation
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[4]) {
                    // Task: Accept Reservation
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                }
            }
            // End State: Reservation accepted (tokenState & 8)
            break;
        }
        tokenState = _tokenState;
    }
}