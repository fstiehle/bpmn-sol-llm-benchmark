// test qwen/qwen3-235b-a22b - one-shot at 2025-06-11T19:20:19.689Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_066fd018_ea41_408e_a465_7c059ef87b32 {
    uint public tokenState = 1;
    address[16] public participants;
    uint public conditions;

    constructor(address[16] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // ChoreographyTask sid-FBDE4BCA... Einbuchung Forderungen / Erlöse
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // ChoreographyTask sid-37914B55... Erstellen der Datei für die Mieteneinzüge
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-0CC207B6... Weiterleitung des Datenträgers an Bank
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // ChoreographyTask sid-7BDBA21B... Abbuchungen der Mieten
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 256 == 256) {
                // ExclusiveGateway sid-8C4EC845... Konto gedeckt?
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 32;
                    continue;
                } else {
                    _tokenState &= ~uint(256);
                    _tokenState |= 16;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-39618A3C... Zahlungseingang
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-BEE7DB4D... Rückbuchung Bank
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-C7C013AB... Ausbuchen der Forderung
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(64);
                    break;
                }
            }
            if (_tokenState & 128 == 128) {
                // ChoreographyTask sid-67E70492... Versand Zahlschein
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ExclusiveGateway sid-4278D118... bezahlt?
                if (conditions & 2 == 2) {
                    _tokenState = 0;
                    break;
                } else {
                    _tokenState = 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
