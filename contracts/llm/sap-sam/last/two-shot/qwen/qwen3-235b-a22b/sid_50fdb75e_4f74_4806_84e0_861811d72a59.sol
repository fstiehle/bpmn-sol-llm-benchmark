// test qwen/qwen3-235b-a22b - two-shot at 2025-06-13T11:04:33.471Z
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_two_shot_sid_50fdb75e_4f74_4806_84e0_861811d72a59 {
    uint public tokenState = 1;
    address[20] public participants;
    uint public conditions;

    constructor(address[20] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            uint oldState = _tokenState;

            if (_tokenState & 1 != 0) {
                // ChoreographyTask sid-255C7D85-0BDF-41BF-A5AB-FDC3145ACE42 (id 1)
                if (id == 1 && msg.sender == participants[0]) {
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 2 != 0) {
                // ExclusiveGateway sid-DC62831A-AD81-4F38-9E42-1F4C88BA4F92
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 8;
                } else {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                }
                continue;
            }

            if (_tokenState & 4 != 0) {
                // ChoreographyTask sid-45E9AFFD-A781-45E8-8249-C294E338952D (id 2)
                if (id == 2 && msg.sender == participants[2]) {
                    _tokenState = 0;
                    break;
                }
            }

            if (_tokenState & 8 != 0) {
                // ChoreographyTask sid-76CF605B-88C2-46BE-8DB3-549A7296C8CE (id 3)
                if (id == 3 && msg.sender == participants[4]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 16 != 0) {
                // ChoreographyTask sid-F3211469-475B-4D44-B145-C8EF46DA9A8A (id 4)
                if (id == 4 && msg.sender == participants[6]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 32 != 0) {
                // ChoreographyTask sid-0FC3E8D1-B5FC-4BC5-854E-152C01FD4981 (id 5)
                if (id == 5 && msg.sender == participants[8]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 64 != 0) {
                // ChoreographyTask sid-882839CF-964B-41C9-BE45-7D9AC768F2A3 (id 6)
                if (id == 6 && msg.sender == participants[10]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 128 != 0) {
                // ChoreographyTask sid-D18D1659-6F68-4FF0-ABF4-8D21BA265F5E (id 7)
                if (id == 7 && msg.sender == participants[12]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 256 != 0) {
                // ChoreographyTask sid-1E11A6C8-0BFD-4A87-BEE5-C1A0CD1B3511 (id 10)
                if (id == 10 && msg.sender == participants[18]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 512 != 0) {
                // ChoreographyTask sid-BDDE6538-49E6-4DB2-9687-ED99B467FC25 (id 8)
                if (id == 8 && msg.sender == participants[14]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }

            if (_tokenState & 1024 != 0) {
                // ChoreographyTask sid-CFAC808C-29D8-483A-8C38-C3A475F76D99 (id 9)
                if (id == 9 && msg.sender == participants[16]) {
                    _tokenState = 0;
                    break;
                }
            }

            if (_tokenState == oldState) {
                break;
            }
        }
        tokenState = _tokenState;
    }
}
