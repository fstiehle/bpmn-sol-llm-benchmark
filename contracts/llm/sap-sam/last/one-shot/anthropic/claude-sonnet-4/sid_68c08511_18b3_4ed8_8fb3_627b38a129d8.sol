// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T03:40:55.058Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
    uint public tokenState = 1;
    address[8] public participants;
    uint public conditions;
    
    constructor(address[8] memory _participants) {
        participants = _participants;
    }
    
    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }
    
    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-64207994-D12D-429F-B981-FC3AF1F538AD Solicitar cotizacion
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032 Comprar productos
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-CEDCB979-3CDF-4A45-8F86-DE3EF441FD5A Solicitar abastecimiento
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-393B71C1-5AD9-41AD-B3BA-D9BF2B1B7ECD Enviar productos
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 2 == 2) {
                // ExclusiveGateway sid-66843A52-3084-4206-A53A-6E901F41424D Acepta cotizacion
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 0;
                    break;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
