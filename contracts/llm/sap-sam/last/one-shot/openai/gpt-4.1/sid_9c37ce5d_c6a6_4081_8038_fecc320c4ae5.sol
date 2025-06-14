// test openai/gpt-4.1 - one-shot at 2025-06-11T23:59:51.598Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_9c37ce5d_c6a6_4081_8038_fecc320c4ae5 {
    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    /**
     * taskID mapping:
     * 1: sid_E2260B7C_2453_4ED3_8F1F_458552A96F90 (Receive Transcription) - participant 0 (speech_to_text_api)
     * 2: sid_5DFD2925_5FC4_49A5_A532_6E1895707F23 (Receive Transcription) - participant 2 (masking_api)
     * 3: sid_4F7B8C9B_B728_4743_A6A1_8B0D37A9E487 (Send Transcription Request) - participant 4 (Customer_Voice_api)
     */
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid_4F7B8C9B_B728_4743_A6A1_8B0D37A9E487 Send_Transcription_Request --->
                if (id == 3 && msg.sender == participants[4]) {
                    // Custom code for Send Transcription Request
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid_E2260B7C_2453_4ED3_8F1F_458552A96F90 Receive_Transcription --->
                if (id == 1 && msg.sender == participants[0]) {
                    // Custom code for Receive Transcription (speech_to_text_api initiates)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid_5DFD2925_5FC4_49A5_A532_6E1895707F23 Receive_Transcription --->
                if (id == 2 && msg.sender == participants[2]) {
                    // Custom code for Receive Transcription (masking_api initiates)
                    _tokenState &= ~uint(4);
                    _tokenState |= 0; // End
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}