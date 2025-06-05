// test GPT 4.1 - One Shot at 2025-06-05T15:17:49.995Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_sid_e6317f9e_4d23_4a94_bc7b_f1e509cf531a {
    // Participants: 0:Guest, 1:ARS, 2:ARS, 3:Host, 4:Host, 5:ARS
    address[6] public participants;
    uint public conditions;

    // Each bit in tokenState represents an active control flow node.
    // Bit 0: Need for accommodation (startEvent, always 1 at start)
    // Bit 1: sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 (Request Reservation)
    // Bit 2: sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 (Inform Host)
    // Bit 3: sid-14F93670-7F19-4E8D-985B-652CC65D24D6 (Accept Reservation)
    // Bit 4: sid-48A6CAB1-A0B4-401E-839C-53F0BD75FA14 (end event)

    uint public tokenState = 1; // start at Need for accommodation (bit 0)

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint taskID) external {
        uint _tokenState = tokenState;

        while (_tokenState != 0) {
            // <--- sid-E70C051E-E333-4C36-84E7-4EFC594CA4F9 Request Reservation --->
            // taskID 0, initiator = participants[0] (Guest)
            if (_tokenState & 1 == 1) {
                if (taskID == 0 && msg.sender == participants[0]) {
                    // deactivate startEvent, activate Request Reservation
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // bit 1
                    continue;
                }
            }
            // <--- sid-5E7F8B9A-D08B-4075-A5AA-334D33017824 Inform Host --->
            // taskID 1, initiator = participants[2] (ARS)
            if (_tokenState & 2 == 2) {
                if (taskID == 1 && msg.sender == participants[2]) {
                    // deactivate Request Reservation, activate Inform Host
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // bit 2
                    continue;
                }
            }
            // <--- sid-14F93670-7F19-4E8D-985B-652CC65D24D6 Accept Reservation --->
            // taskID 2, initiator = participants[4] (Host)
            if (_tokenState & 4 == 4) {
                if (taskID == 2 && msg.sender == participants[4]) {
                    // deactivate Inform Host, activate Accept Reservation
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // bit 3
                    continue;
                }
            }
            // <--- End Event: sid-48A6CAB1-A0B4-401E-839C-53F0BD75FA14 Reservation accepted --->
            // This is an end event. When bit 3 is set, we transition to finished (tokenState = 0)
            if (_tokenState & 8 == 8) {
                // deactivate Accept Reservation, activate end (or just end process)
                _tokenState &= ~uint(8);
                _tokenState = 0;
                break;
            }
            break;
        }

        tokenState = _tokenState;
    }
}