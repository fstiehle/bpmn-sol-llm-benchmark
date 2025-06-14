// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:52:54.414Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_5823deaf_f759_45fe_9cab_90ce484355cd {
    uint public tokenState = 1; // Starting at StartEvent
    address[12] public participants;
    uint public conditions;

    constructor(address[12] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event (sid-DF8E1811-2B2B-4A54-B76F-C232CF77223A)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to T1 Propose supply plan
                continue;
            }

            // T1 Propose supply plan (sid-0AB2B1E2-565E-492E-871C-50FF20A321C6)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to EBG1
                    id = 0;
                    continue;
                }
            }

            // EBG1 (sid-C98569BB-D5F1-48B8-83D1-6C80EA41E4A1)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                // Conditions for outgoing flows are not explicitly defined in XML, so we assume manual triggering via task execution
                // This is a placeholder for conditional logic if conditions were present
                _tokenState |= 8; // Default to T2 Reject proposal (sid-EE03DBA3-9FD6-4703-9BBC-D7F32BABD305)
                _tokenState |= 16; // T3 Accept proposal (sid-88D3A0FA-60F7-4BC6-8785-C239506B46F9)
                _tokenState |= 32; // T4 Offer counter-proposal (sid-F8929F66-43D4-4F05-94E3-B254EB0E9B7B)
                continue;
            }

            // T2 Reject proposal (sid-EE03DBA3-9FD6-4703-9BBC-D7F32BABD305)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 128; // Move to End Event (Failure)
                    id = 0;
                    continue;
                }
            }

            // T3 Accept proposal (sid-88D3A0FA-60F7-4BC6-8785-C239506B46F9)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 128; // Move to End Event (Failure)
                    id = 0;
                    continue;
                }
            }

            // T4 Offer counter-proposal (sid-F8929F66-43D4-4F05-94E3-B254EB0E9B7B)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // Move to EBG2
                    id = 0;
                    continue;
                }
            }

            // EBG2 (sid-14FDE73A-7D07-40B9-A438-41B8B94005D7)
            if (_tokenState & 64 == 64) {
                _tokenState &= ~uint(64);
                // Conditions for outgoing flows are not explicitly defined in XML, so we assume manual triggering via task execution
                _tokenState |= 256; // T5 Accept counter-proposal (sid-AF2D4571-93CA-4D0A-B19E-9982DFA90B60)
                _tokenState |= 512; // T6 Reject counter-proposal (sid-A3BC0953-F5BA-4D9B-9E2B-0871FDB6CB35)
                continue;
            }

            // T5 Accept counter-proposal (sid-AF2D4571-93CA-4D0A-B19E-9982DFA90B60)
            if (_tokenState & 256 == 256) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 1024; // Move to Exclusive Gateway (sid-5EE7F26E-1C5B-4A95-A958-C29C8597AC3C)
                    id = 0;
                    continue;
                }
            }

            // T6 Reject counter-proposal (sid-A3BC0953-F5BA-4D9B-9E2B-0871FDB6CB35)
            if (_tokenState & 512 == 512) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to Exclusive Gateway (sid-5EE7F26E-1C5B-4A95-A958-C29C8597AC3C)
                    id = 0;
                    continue;
                }
            }

            // Exclusive Gateway (sid-5EE7F26E-1C5B-4A95-A958-C29C8597AC3C)
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 128; // Default path to End Event (Failure)
                continue;
            }

            // End Event (sid-F4E0DFDB-2240-4435-92B1-E9752BA03905)
            if (_tokenState & 128 == 128) {
                _tokenState = 0; // Terminate process
                break;
            }

            break; // Exit loop if no transitions are made
        }
        tokenState = _tokenState;
    }
}