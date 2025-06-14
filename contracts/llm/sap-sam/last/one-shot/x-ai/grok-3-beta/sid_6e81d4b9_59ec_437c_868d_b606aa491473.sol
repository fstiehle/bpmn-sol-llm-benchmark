// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:58:45.359Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_6e81d4b9_59ec_437c_868d_b606aa491473 {
    uint public tokenState = 1; // Start with the initial state active
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
        while (_tokenState != 0) {
            // Start Event (sid-6E590BD9-1FDE-4E2D-84BA-BD4063AC996E) auto-activates first task
            if (_tokenState & 1 == 1) {
                // Task: Solicitar Cotizacion (sid-CC6038BD-B2B0-4B99-A027-0569C7FE8FD1, taskID: 1)
                if (1 == id && msg.sender == participants[0]) { // Initiating participant: Cliente
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to gateway sid-29C09A1F-7B84-413D-A005-DECD694FBB48
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // Exclusive Gateway: Acepta Cotizacion (sid-29C09A1F-7B84-413D-A005-DECD694FBB48)
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to task sid-F59C3071-B78E-472A-BABB-980D836EEC9C (Comprar Productos)
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 0; // Default path to End Event (sid-8CF257E8-DD0D-4EDF-8E6F-543DA7EC56CC)
                    break; // Terminate process
                }
            }
            if (_tokenState & 4 == 4) {
                // Task: Comprar Productos (sid-F59C3071-B78E-472A-BABB-980D836EEC9C, taskID: 2)
                if (2 == id && msg.sender == participants[2]) { // Initiating participant: Cliente
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to task sid-A0145737-B565-4383-B962-B7F8EB84BF13 (Solicitar Abastecimiento)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Task: Solicitar Abastecimiento (sid-A0145737-B565-4383-B962-B7F8EB84BF13, taskID: 3)
                if (3 == id && msg.sender == participants[4]) { // Initiating participant: Vandedor
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to task sid-8015FC3A-9884-4B3E-8F94-CDBE345BE0F4 (Enviar Productos)
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // Task: Enviar Productos (sid-8015FC3A-9884-4B3E-8F94-CDBE345BE0F4, taskID: 4)
                if (4 == id && msg.sender == participants[7]) { // Initiating participant: Vendedor
                    _tokenState &= ~uint(16);
                    _tokenState |= 0; // Move to End Event (sid-8CF257E8-DD0D-4EDF-8E6F-543DA7EC56CC)
                    break; // Terminate process
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}