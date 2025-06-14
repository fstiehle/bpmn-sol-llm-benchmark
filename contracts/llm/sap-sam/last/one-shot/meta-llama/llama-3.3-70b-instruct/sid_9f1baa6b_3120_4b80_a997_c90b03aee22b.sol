// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T10:05:30.238Z
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_9f1baa6b_3120_4b80_a997_c90b03aee22b {
    uint public tokenState = 1;
    address[18] public participants;
    uint public conditions;

    constructor(address[18] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- ChoreographyTask_1vnykqp Make travel offer --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- ChoreographyTask_EFD4788E_A1A4_40E5_A500_0970010990DD Place order --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- exclusive gateway --->
                if (conditions & 1 == 1) {
                    // <--- ChoreographyTask_1FD8BD65_616D_4C0C_92A1_E591AA72FAD0 Reject Order --->
                    if (3 == id && msg.sender == participants[4]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(4);
                        _tokenState |= 8;
                        id = 0;
                        continue;
                    }
                } else {
                    // <--- ChoreographyTask_FBCC0E56_C042_4E45_917E_0E8620D644D3 Apply order --->
                    if (4 == id && msg.sender == participants[6]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(4);
                        _tokenState |= 16;
                        id = 0;
                        continue;
                    }
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- end of reject order path --->
                _tokenState &= ~uint(8);
                _tokenState |= 0;
                break;
            }
            if (_tokenState & 16 == 16) {
                // <--- ChoreographyTask_6676D52C_DF78_4BB4_885E_3E6236D6B9D3 Confirm booking --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- ChoreographyTask_6EE679BB_748F_4253_B501_87CCF2E0D7D0 Pay travel --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // <--- ChoreographyTask_8D8EFFEB_C49E_4DC9_B6B6_8AC520B8A50C Order ticket --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // <--- exclusive gateway --->
                if (conditions & 1 == 1) {
                    // <--- ChoreographyTask_49741E13_1B13_422C_8AD2_6B8241F6E32E Confirm payment --->
                    if (9 == id && msg.sender == participants[16]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(128);
                        _tokenState |= 0;
                        break;
                    }
                } else {
                    // <--- ChoreographyTask_795C6F26_3630_45A8_BAB6_DE8820B8DBB0 Refuse payment --->
                    if (8 == id && msg.sender == participants[14]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(128);
                        _tokenState |= 0;
                        break;
                    }
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
