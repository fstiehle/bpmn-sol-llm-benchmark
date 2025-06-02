// test GPT 4.1 - One Shot at 2025-06-02T19:29:28.622Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_PizzaDelivery {
    uint public tokenState = 1;
    address[3] public participants;
    uint public conditions;

    constructor(address[3] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;

        while (_tokenState != 0) {
            // ChoreographyTask_0hy9n0g: Order Pizza (taskID: 0, initiatingParticipantRef: Participant_06qakjv[0])
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // <--- custom code for task Order Pizza here --->
                    _tokenState &= ~uint(1);
                    // move token to Gateway_1td68h3 (exclusive gateway)
                    // at gateway, do nothing now, transition below
                    _tokenState |= 2;
                    continue;
                }
            }
            // Gateway_1td68h3: exclusive, default=Flow_1uhdzct
            //  - Flow_0mkbrl0 (pizza ready): to Gateway_0x44u2n, condition: conditions & 1 == 1
            //  - Flow_1uhdzct (Pizza needs to be baked): to ChoreographyTask_1b2vkz9
            if (_tokenState & 2 == 2) {
                bool taken = false;
                if ((conditions & 1) == 1) {
                    // pizza ready branch
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                    taken = true;
                }
                if (!taken) {
                    // default: Pizza needs to be baked
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }
            // ChoreographyTask_1b2vkz9: Confirm ETA (taskID: 1, initiatingParticipantRef: Participant_0mgz9si[1])
            if (_tokenState & 4 == 4) {
                if (id == 1 && msg.sender == participants[1]) {
                    // <--- custom code for task Confirm ETA here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // ChoreographyTask_1jrfmx8: Announce Delivery (taskID: 2, initiatingParticipantRef: Participant_0mgz9si[1])
            if (_tokenState & 16 == 16) {
                if (id == 2 && msg.sender == participants[1]) {
                    // <--- custom code for task Announce Delivery here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 8;
                    continue;
                }
            }
            // Gateway_0x44u2n: exclusive, default=Flow_16j5p8v
            //  - Flow_16j5p8v: to ChoreographyTask_1797ws1
            if (_tokenState & 8 == 8) {
                // no conditionExpression, always default transition to Deliver Pizza
                _tokenState &= ~uint(8);
                _tokenState |= 32;
                continue;
            }
            // ChoreographyTask_1797ws1: Deliver Pizza (taskID: 3, initiatingParticipantRef: Participant_0537iz2[2])
            if (_tokenState & 32 == 32) {
                if (id == 3 && msg.sender == participants[2]) {
                    // <--- custom code for task Deliver Pizza here --->
                    _tokenState &= ~uint(32);
                    // EndEvent
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }

        tokenState = _tokenState;
    }
}