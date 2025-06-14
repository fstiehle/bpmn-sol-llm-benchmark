// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:39:50.455Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_64d48248_beb0_44b7_b11c_2ebbbb39c1ce {
    uint public tokenState = 1;
    address[4] public participants;
    
    constructor(address[4] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-CE6FC14A-131E-46BC-BC22-EB91FC9B3DDC Zahlungsmittel pruefen --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue; 
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-F2D422F5-0187-4B47-AF88-7E50BA466EE1 Zahlungsmittel erhalten --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
