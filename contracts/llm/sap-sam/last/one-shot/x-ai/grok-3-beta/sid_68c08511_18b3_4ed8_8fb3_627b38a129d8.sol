// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:57:15.433Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_68c08511_18b3_4ed8_8fb3_627b38a129d8 {
    uint public tokenState = 1; // Start with the start event active
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
            // Start Event to Solicitar cotizacion (sid-64207994-D12D-429F-B981-FC3AF1F538AD)
            if (_tokenState & 1 == 1) {
                // Solicitar cotizacion (Task ID 1)
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2; // Move to gateway sid-66843A52-3084-4206-A53A-6E901F41424D
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-66843A52-3084-4206-A53A-6E901F41424D (Acepta cotizacion)
            if (_tokenState & 2 == 2) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // End event sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1 (conditions path)
                    continue;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8; // Default path to Comprar productos (sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032)
                    continue;
                }
            }

            // Comprar productos (sid-3F4E15A6-D506-4F9E-B3AB-EBFC8FC37032)
            if (_tokenState & 8 == 8) {
                // Comprar productos (Task ID 2)
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Move to Solicitar abastecimiento (sid-CEDCB979-3CDF-4A45-8F86-DE3EF441FD5A)
                    id = 0;
                    continue;
                }
            }

            // Solicitar abastecimiento (sid-CEDCB979-3CDF-4A45-8F86-DE3EF441FD5A)
            if (_tokenState & 16 == 16) {
                // Solicitar abastecimiento (Task ID 3)
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Move to Enviar productos (sid-393B71C1-5AD9-41AD-B3BA-D9BF2B1B7ECD)
                    id = 0;
                    continue;
                }
            }

            // Enviar productos (sid-393B71C1-5AD9-41AD-B3BA-D9BF2B1B7ECD)
            if (_tokenState & 32 == 32) {
                // Enviar productos (Task ID 4)
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 4; // Move to end event sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1
                    id = 0;
                    continue;
                }
            }

            // End Event (sid-158216D4-816D-4A7A-BCA1-EB11DD8FF8B1)
            if (_tokenState & 4 == 4) {
                _tokenState = 0; // Terminate the process
                break;
            }

            break; // Exit loop if no transitions are possible
        }
        tokenState = _tokenState;
    }
}