// test anthropic/claude-sonnet-4 - one-shot at 2025-06-12T20:44:44.423Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract anthropic_claude_sonnet_4_one_shot_sid_a128c562_b6ff_4762_86ad_3db757b3baa8 {
    uint public tokenState = 1;
    address[19] public participants;
    uint public conditions;

    constructor(address[19] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // Start Event
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            if (_tokenState & 2 == 2) {
                // Exclusive Gateway Converging
                _tokenState &= ~uint(2);
                _tokenState |= 4;
                continue;
            }
            if (_tokenState & 4 == 4) {
                // ChoreographyTask sid-17139AC8-7F6D-400E-AFDA-3B754E66F776 Ueberweisung taetigen
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // Exclusive Gateway Diverging
                if (conditions & 1 == 1) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    continue;
                }
                if (conditions & 2 == 2) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32;
                    continue;
                }
                // Default
                _tokenState &= ~uint(8);
                _tokenState |= 64;
                continue;
            }
            if (_tokenState & 16 == 16) {
                // ChoreographyTask sid-6840A80E-8EE7-4A49-9CFE-607B2EED5E87 Ueberschuss zurueckzahlen
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break;
                }
            }
            if (_tokenState & 32 == 32) {
                // ChoreographyTask sid-75BCEE37-9CDA-41D8-B345-83417545D41F Nachhzahlungsaufforderung schicken
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 64 == 64) {
                // ChoreographyTask sid-1FB6E2A1-8320-4851-B504-8CA4B7AF1ED0 Zahlungseingang bestaetigen
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 128 == 128) {
                // Parallel Gateway Diverging
                _tokenState &= ~uint(128);
                _tokenState |= 256 | 512;
                continue;
            }
            if (_tokenState & 256 == 256) {
                // ChoreographyTask sid-13151680-B8EB-4564-B218-B73084FC75E5 Transportkosten bezahlen
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 512 == 512) {
                // ChoreographyTask sid-5CFB3FE9-33BB-4E8D-91F5-FB684E3F49BC Ware an Logistik-Unternehmen uebergeben
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 3072 == 3072) {
                // Parallel Gateway Converging
                _tokenState &= ~uint(3072);
                _tokenState |= 4096;
                continue;
            }
            if (_tokenState & 4096 == 4096) {
                // ChoreographyTask sid-F731B3E3-C364-47B2-85EE-F14FE149D7B1 Ware liefern
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8192 == 8192) {
                // ChoreographyTask sid-5FD69B90-2FAE-4AF1-A36E-3C5F70447C40 Wareneingang bestaetigen
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 16384;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16384 == 16384) {
                // ChoreographyTask sid-0C00E59F-E01E-45F3-A8DD-E10A61D2884F Ueberweisung an den Verkaeufer taetigen
                if (9 == id && msg.sender == participants[17]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 0;
                    break;
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
