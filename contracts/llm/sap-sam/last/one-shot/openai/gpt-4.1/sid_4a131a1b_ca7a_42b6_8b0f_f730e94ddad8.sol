// test openai/gpt-4.1 - one-shot at 2025-06-11T23:39:10.795Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

// Contract name is the choreography id: sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8
contract openai_gpt_4_1_one_shot_sid_4a131a1b_ca7a_42b6_8b0f_f730e94ddad8 {
    // tokenState bitmasks:
    // 1: StartEvent (sid-2801EF41-DF93-48B6-853D-28AAC07395E4)
    // 2: aa (sid-6F0CC474-0DE0-473D-806B-948E25F93FFA)
    // 4: Gateway (sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B)
    // 8: aadas (sid-B2024251-8DE3-41A1-9596-A5E6788A71AF)
    // 16: a (sid-CB238E79-5376-4273-8A2F-3B9C56572F77)
    // 32: EndEvent (sid-12D2BFAD-5BC9-4CB1-804F-646E7F126525)

    uint public tokenState = 1;
    address[6] public participants;
    uint public conditions;

    // Participant mapping:
    // 0: sid-5B6F1187-2911-421D-8DD9-944B21BD25E1 (k)
    // 1: sid-D10918D3-3424-4A8B-9E52-C66AA5F6E0FE (gf)
    // 2: sid-CC82FC79-ADBF-4D2A-97C6-12665192603C (k)
    // 3: sid-2E1660F1-C7D4-416C-B03C-9A4EFCC78CCE (gf)
    // 4: sid-E260643A-0BB7-4061-8060-753A00C344B3 (gf)
    // 5: sid-A99D907C-BA19-4CDD-ADDD-0E9C7F0C8F14 (k)

    constructor(address[6] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // StartEvent
            if (_tokenState & 1 == 1) {
                // Transition: Start -> aa (sid-6F0CC474-0DE0-473D-806B-948E25F93FFA)
                _tokenState &= ~uint(1);
                _tokenState |= 2;
                continue;
            }
            // aa (sid-6F0CC474-0DE0-473D-806B-948E25F93FFA), taskID = 1, initiatingParticipant: 0
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[0]) {
                    // <--- custom code for aa here --->
                    _tokenState &= ~uint(2);
                    // Outgoing: sid-F0DA0944-06E1-4C18-A94A-59987E29DA41 -> sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            // ExclusiveGateway (sid-0DE77E9D-E94D-4EFD-8E3E-3BEA083F9E7B), bitmask 4
            if (_tokenState & 4 == 4) {
                // Outgoings:
                // sid-5973BBD8-FD9B-4B3F-B0B1-21220CBA3458 (default) -> sid-B2024251-8DE3-41A1-9596-A5E6788A71AF (aadas)
                // sid-0464AB0B-D98F-4691-A3CC-720B0E9E41C4 ("conditions & 1 == 1") -> sid-CB238E79-5376-4273-8A2F-3B9C56572F77 (a)
                if (conditions & 1 == 1) {
                    // conditions & 1 == 1
                    _tokenState &= ~uint(4);
                    _tokenState |= 16; // a (sid-CB238E79-5376-4273-8A2F-3B9C56572F77)
                    continue;
                } else {
                    // default flow
                    _tokenState &= ~uint(4);
                    _tokenState |= 8; // aadas (sid-B2024251-8DE3-41A1-9596-A5E6788A71AF)
                    continue;
                }
            }
            // aadas (sid-B2024251-8DE3-41A1-9596-A5E6788A71AF), taskID = 2, initiatingParticipant: 2
            if (_tokenState & 8 == 8) {
                if (id == 2 && msg.sender == participants[2]) {
                    // <--- custom code for aadas here --->
                    _tokenState &= ~uint(8);
                    // Outgoing: sid-AAB561BE-2972-4F99-BDAD-580BE5D98B62 -> EndEvent
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // a (sid-CB238E79-5376-4273-8A2F-3B9C56572F77), taskID = 3, initiatingParticipant: 4
            if (_tokenState & 16 == 16) {
                if (id == 3 && msg.sender == participants[4]) {
                    // <--- custom code for a here --->
                    _tokenState &= ~uint(16);
                    // Outgoing: sid-28CB42EA-1E21-4283-BD20-35E5BF45239E -> EndEvent
                    _tokenState |= 32;
                    id = 0;
                    continue;
                }
            }
            // EndEvent
            if (_tokenState & 32 == 32) {
                // Process terminates
                _tokenState = 0;
                break;
            }
            break;
        }
        tokenState = _tokenState;
    }
}