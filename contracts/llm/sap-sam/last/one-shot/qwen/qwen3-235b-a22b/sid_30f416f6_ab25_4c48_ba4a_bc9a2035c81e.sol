// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T22:23:55.421Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_30f416f6_ab25_4c48_ba4a_bc9a2035c81e {
    uint public tokenState = 1;
    address[10] public participants;
    
    constructor(address[10] memory _participants) {
        participants = _participants;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        
        while(_tokenState != 0) {
            // Task 1: Übergabe des zu verschickenden Pakets
            if (_tokenState & 1 == 1) {
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            
            // Task 2: Einscannen bzw. Übergabe der Paketinformationen
            if (_tokenState & 2 == 2) {
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            
            // Task 3: Informationen über die korrekte Versand-Einordnung
            if (_tokenState & 4 == 4) {
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            
            // Task 4: überprüft die Einordnung auf Plausibilität
            if (_tokenState & 8 == 8) {
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            
            // Task 5: Paket wird dem Zusteller zugeordnet
            if (_tokenState & 16 == 16) {
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    id = 0;
                    break; // End process
                }
            }
            
            break;
        }
        
        tokenState = _tokenState;
    }
}
