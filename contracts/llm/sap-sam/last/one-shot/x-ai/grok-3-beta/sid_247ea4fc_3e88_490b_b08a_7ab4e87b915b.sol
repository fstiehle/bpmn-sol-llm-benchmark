// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:41:25.998Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_247ea4fc_3e88_490b_b08a_7ab4e87b915b {
    uint public tokenState = 1; // Starting with the StartEvent
    address[10] public participants;
    uint public conditions;

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent sid-01FD7FD4-5EE2-4F32-9C07-E640E79038EB
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to sid-0BA1CF17-3DB0-4F87-BB9B-9744CAD35C0E
                continue;
            }

            // ChoreographyTask sid-0BA1CF17-3DB0-4F87-BB9B-9744CAD35C0E (Enviar orden de compra)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // sid-39213E64-B620-485B-B859-71BCB28C2FB7 (Vendedor)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to sid-48CDBBB4-3F12-4D9E-A27A-C2D545252764 (Exclusive Gateway)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway sid-48CDBBB4-3F12-4D9E-A27A-C2D545252764
            if (_tokenState & 4 == 4) {
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // Move to sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F (Confirmacion de orden)
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // Move to sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 (Comprar materia prima - default)
                    continue;
                }
            }

            // ChoreographyTask sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F (Confirmacion de orden)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // sid-4C27B32E-1D2D-421F-993A-BF8ED7179ADE (Vendedor)
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to sid-902612B5-04B6-4A1C-8060-BB1F4CA704AF (Parallel Gateway Diverging)
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-218B56E6-2B14-4C26-9C7B-0EC315282FB5 (Comprar materia prima)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) { // sid-7AA4B406-3759-430A-BF25-51F9DF77FC12 (Vendedor)
                    _tokenState &= ~uint(16);
                    _tokenState |= 8; // Move to sid-5C74E58D-D02E-4C79-88CD-14DA7AE9BD6F (Confirmacion de orden)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway sid-902612B5-04B6-4A1C-8060-BB1F4CA704AF (Diverging)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Move to sid-E8A13914-8E0A-406E-BC57-139A04D44273 (Envio del producto)
                _tokenState |= 128; // Move to sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 (Factura al cliente)
                continue;
            }

            // ChoreographyTask sid-E8A13914-8E0A-406E-BC57-139A04D44273 (Envio del producto)
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[6]) { // sid-D47D98BC-7D8B-43A5-92B4-167875687DEA (Vendedor)
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to sid-D6C2AB20-92CF-4EA9-B20C-2468FEDFD3B3 (Parallel Gateway Converging)
                    id = 0;
                    continue;
                }
            }

            // ChoreographyTask sid-2C0B5580-D8B0-4B48-B6E9-A0061B409231 (Factura al cliente)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) { // sid-B958C7F1-3EF2-4938-9D5C-D0147EF91FBA (Vendedor)
                    _tokenState &= ~uint(128);
                    _tokenState |= 512; // Move to sid-D6C2AB20-92CF-4EA9-B20C-2468FEDFD3B3 (Parallel Gateway Converging)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway sid-D6C2AB20-92CF-4EA9-B20C-2468FEDFD3B3 (Converging)
            if (_tokenState & 768 == 768) { // Wait for both 256 (Envio) and 512 (Factura)
                _tokenState &= ~uint(768);
                _tokenState |= 1024; // Move to sid-DA43F0CB-0C61-4659-96F6-22EEE67D477F (EndEvent)
                continue;
            }

            // EndEvent sid-DA43F0CB-0C61-4659-96F6-22EEE67D477F
            if (_tokenState & 1024 == 1024) {
                _tokenState = 0; // Terminate the process
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}