// test openai/gpt-4.1 - one-shot at 2025-06-11T23:55:27.567Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_8884dab2_f4b9_4e23_acd1_d28ccdb9c337 {
    uint public tokenState = 1;
    address[4] public participants;
    uint public conditions;

    constructor(address[4] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    /**
     * @notice enact executes a choreography task if the caller is the correct participant and the task is enabled
     * @param id the taskID from the mapping:
     * {"sid-955E5290-E3D0-40E1-93E5-02CD7548D841":1,"sid-96719258-A235-4848-886C-7E1C342956DB":2}
     */
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // sid-955E5290_E3D0_40E1_93E5_02CD7548D841: Receive_cancel_request
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    // Task logic for Receive_cancel_request
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            // sid-96719258_A235_4848_886C_7E1C342956DB: Receive_cancel_request_processed_notification
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    // Task logic for Receive_cancel_request_processed_notification
                    _tokenState &= ~uint(2);
                    // End event: Application_cancelled
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}