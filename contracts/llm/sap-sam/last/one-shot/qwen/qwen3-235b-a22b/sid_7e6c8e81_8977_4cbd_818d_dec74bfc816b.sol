// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T01:59:25.645Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_7e6c8e81_8977_4cbd_818d_dec74bfc816b {
    uint public tokenState = 1 << 0;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (true) {
            uint prev = _tokenState;

            // Choreography Tasks
            if (_tokenState & (1 << 0) != 0) {
                // TaskID 1: sid-30A5461D-7588-4ED8-ADC2-E4128343C522
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1 << 0);
                    _tokenState |= uint(1 << 10);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 1) != 0) {
                // TaskID 2: sid-3D723944-9B34-40D6-A39C-EAB0CA933734
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(1 << 1);
                    _tokenState |= uint(1 << 3);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 2) != 0) {
                // TaskID 3: sid-5A3ECBEA-8342-402B-8957-B983A5CF5CB6
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(1 << 2);
                    _tokenState = 0;
                    break;
                }
            }

            if (_tokenState & (1 << 3) != 0) {
                // TaskID 4: sid-6DBA4DBC-8A77-4C66-93CB-4834A500751F
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(1 << 3);
                    _tokenState |= uint(1 << 4);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 4) != 0) {
                // TaskID 5: sid-CD6AB0BE-9B3F-434A-8700-6D824685A462
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(1 << 4);
                    _tokenState |= uint(1 << 13);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 5) != 0) {
                // TaskID 6: sid-87287EEC-75F1-4AC8-AE7E-9C391703EE55
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(1 << 5);
                    _tokenState |= uint(1 << 6);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 6) != 0) {
                // TaskID 7: sid-BB62FAA9-D601-4BF1-A772-3A4380DD1A5B
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(1 << 6);
                    _tokenState |= uint(1 << 11);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 7) != 0) {
                // TaskID 8: sid-02B3BAAB-F46E-4E03-8DEB-ED35AD89343F
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1 << 7);
                    _tokenState |= uint(1 << 12);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 8) != 0) {
                // TaskID 9: sid-7A241CBE-2575-4DCA-95BC-28BAB9EEFF81
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState &= ~uint(1 << 8);
                    _tokenState |= uint(1 << 12);
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & (1 << 9) != 0) {
                // TaskID 10: sid-4B89B8DF-8AF8-4325-81E7-8C70BB23A15D
                if (id == 10 && msg.sender == participants[19]) {
                    _tokenState &= ~uint(1 << 9);
                    _tokenState = 0;
                    break;
                }
            }

            // Exclusive Gateways
            if (_tokenState & (1 << 10) != 0) {
                // Gateway sid-420FA79D...
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(1 << 10);
                    _tokenState |= uint(1 << 2);
                } else {
                    _tokenState &= ~uint(1 << 10);
                    _tokenState |= uint(1 << 1);
                }
                continue;
            }

            if (_tokenState & (1 << 11) != 0) {
                // Gateway sid-D11CB962...
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(1 << 11);
                    _tokenState |= uint(1 << 7);
                } else {
                    _tokenState &= ~uint(1 << 11);
                    _tokenState |= uint(1 << 8);
                }
                continue;
            }

            if (_tokenState & (1 << 12) != 0) {
                // Gateway sid-42E5E8F5...
                _tokenState &= ~uint(1 << 12);
                _tokenState |= uint(1 << 9);
                continue;
            }

            if (_tokenState & (1 << 13) != 0) {
                // Gateway sid-E659E6B5...
                if (conditions & 4 == 4) {
                    _tokenState &= ~uint(1 << 13);
                    _tokenState |= uint(1 << 5);
                } else {
                    _tokenState &= ~uint(1 << 13);
                    _tokenState |= uint(1 << 2);
                }
                continue;
            }

            if (_tokenState == prev) break;
        }
        tokenState = _tokenState;
    }
}
