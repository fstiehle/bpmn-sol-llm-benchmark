// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:56:23.778Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
    uint public tokenState = 1;
    address[15] public participants;
    uint public conditions;

    constructor(address[15] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-56125FD7-FBEE-47E9-B12C-9F21ECF50FBE teilt Wuensche Rahmenbedingung mit --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-F6CE5331-CAB4-4FAC-BDD7-3B99BC13EECE praesentiert moegliches Objekt --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-56CC82ED-03D3-4C04-8596-36F6EC5AF83A entscheidet sich fuer Objekt --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // <--- sid-627ACE73-E5A5-4C21-A82F-E4F6B855E698 Finanzierung klaeren --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // <--- sid-898706F7-D8B6-4499-9CC2-35153078234D bereitet Vertrag vor --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2048 == 2048) {
                // <--- sid-218F35A0-BB4F-434A-A456-79ED84327F62 Vertrag unterzeichnen --->
                if (6 == id && msg.sender == participants[11]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2048);
                    _tokenState = 0; // End event
                    break;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-2C48E915-2A98-4D58-8547-C7922A4C8935 Exclusive Gateway --->
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    continue;
                } else {
                    _tokenState &= ~uint(4);
                    _tokenState = 0; // Default path to end event
                    break;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-C8DEEA29-0B4B-454C-9351-E8A1B0ABCB86 Parallel Gateway Diverging --->
                _tokenState &= ~uint(16);
                _tokenState |= 32; // Activate Finanzierung klaeren
                _tokenState |= 256; // Activate bereitet Vertrag vor
                continue;
            }
            if (_tokenState & 576 == 576) {
                // <--- sid-5E5530AA-6767-4D7E-AD0E-C196C21E0078 Parallel Gateway Converging --->
                if ((_tokenState & 64 == 64) && (_tokenState & 512 == 512)) {
                    _tokenState &= ~uint(64);
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048; // Activate Vertrag unterzeichnen
                    continue;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}