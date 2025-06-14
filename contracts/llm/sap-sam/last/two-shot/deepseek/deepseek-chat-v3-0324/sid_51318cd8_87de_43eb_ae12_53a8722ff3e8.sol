// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T21:30:59.815Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_51318cd8_87de_43eb_ae12_53a8722ff3e8 {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-1BAD194A-9703-4904-A294-AC9F0CAE37CB Bestellung aufgeben --->
                if (7 == id && msg.sender == participants[12]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-5215CCEA-6F76-4A6B-A05C-6C8B496FC02A Kassenbon aushaendigen --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-368D5D27-DD58-48D4-9867-3245E8D661C6 Quitting bezahlen --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-0E20545F-12E5-419D-8798-AD7B746B8744 Informationen zu Feedback uebergeben --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                if (conditions & 1 == 1) {
                    // <--- sid-2A104376-3AFF-40B5-9599-9F5F0B636EC7 Kunde will kein Feedback abgeben --->
                    if (4 == id && msg.sender == participants[6]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(16);
                        _tokenState |= 0;
                        break;
                    }
                } else {
                    // <--- sid-AB7BC7F4-570A-419F-9ADD-6E51F01F3F04 Zustimmung --->
                    if (5 == id && msg.sender == participants[8]) {
                        // <--- custom code for task here --->
                        _tokenState &= ~uint(16);
                        _tokenState |= 32;
                        id = 0;
                        continue;
                    }
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-AC4DDDB3-60C0-4778-86F8-7DD28C136825 Feedback abgeben --->
                if (6 == id && msg.sender == participants[10]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
