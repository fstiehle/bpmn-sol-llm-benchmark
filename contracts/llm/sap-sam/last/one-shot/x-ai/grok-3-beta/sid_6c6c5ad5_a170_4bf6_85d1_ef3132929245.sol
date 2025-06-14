// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:58:06.188Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6c6c5ad5_a170_4bf6_85d1_ef3132929245 {
    uint public tokenState = 1; // Start with the first task active
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
        while (_tokenState != 0) {
            // Task 1: Saopstava problem (sid-DCB7D1E5-2848-4BC5-8D21-94BB7871D1E1)
            if (_tokenState & 1 == 1) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Activate next task
                    id = 0;
                    continue;
                }
            }

            // Task 2: Trazi detaljniji opis (sid-F3A7F146-41B5-43A4-9C8A-416ED5B41612)
            if (_tokenState & 2 == 2) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate gateway
                    id = 0;
                    continue;
                }
            }

            // Task 3: Saopstava resenje (sid-E38463B9-D82B-4189-851B-1B9A3309F090)
            if (_tokenState & 8 == 8) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 0; // End of process
                    break;
                }
            }

            // Task 4: Trazi pomoc (sid-1BDA005F-A28B-4B00-A678-19F7E437856F)
            if (_tokenState & 16 == 16) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Activate gateway
                    id = 0;
                    continue;
                }
            }

            // Task 5: Saopstava resenje problema (sid-8804897F-A178-4B50-B16F-90AD4B890E31)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Activate converging gateway
                    id = 0;
                    continue;
                }
            }

            // Task 6: Trazi pomoc (sid-3DC05355-F0EE-4522-9151-7257C96DC99E)
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate next task
                    id = 0;
                    continue;
                }
            }

            // Task 7: Saopstava problem (sid-906F5EDC-1877-44ED-9FD9-9FF3FE91B340)
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Activate converging gateway
                    id = 0;
                    continue;
                }
            }

            // Gateway: sid-5CBD0AD9-DB13-466E-A702-7F9AAF3355E4 (Diverging)
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Activate Task 4
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 128; // Default path to converging gateway
                    continue;
                }
            }

            // Gateway: sid-800358D3-F1F2-4A3A-A1FC-45ECA8CD8EB5 (Diverging)
            if (_tokenState & 32 == 32) {
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 256; // Activate Task 6
                    continue;
                } else {
                    _tokenState &= ~uint(32);
                    _tokenState |= 1024; // Default path to converging gateway
                    continue;
                }
            }

            // Gateway: sid-4F849501-E9FA-4B73-9703-F9A811BFBCB7 (Converging)
            if (_tokenState & 128 == 128) {
                _tokenState &= ~uint(128);
                _tokenState |= 8; // Activate Task 3
                continue;
            }

            // Gateway: sid-44FB41C4-E42B-4D13-B0FC-F0F538F920B0 (Converging)
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 64; // Activate Task 5
                continue;
            }

            break;
        }
        tokenState = _tokenState;
    }
}