// test GPT 4.1 - One Shot at 2025-06-05T15:18:13.137Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract gpt_4_1_2025_04_14_one_shot_sid_fcc8b91c_8ddf_4dfa_9dbe_c492016f54f1 {
    uint public tokenState = 1;
    address[10] public participants;
    uint public conditions;

    // taskID mapping:
    // 0: sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 (Bewerbung und Eingangsbestätigung senden)
    // 1: sid-63049054-FF0D-448E-A42E-7B917601D74C (Fehlende Unterlagen anfordern)
    // 2: sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F (Fehlende Unterlagen schicken)
    // 3: sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF (Zusage senden)
    // 4: sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 (Absage senden)

    constructor(address[10] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // <--- sid-C12DEEB5-86BF-4254-BB68-C930FD0905D6 Bewerbung und Eingangsbestätigung senden --->
            if (_tokenState & 1 == 1) {
                if (id == 0 && msg.sender == participants[0]) {
                    // Transition: deactivate current, activate next state (to gateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157)
                    _tokenState &= ~uint(1);
                    // ExclusiveGateway sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157 (Bewerbung vollständig ?)
                    // Has two outgoing: sid-4069629D-D16A-45C2-9564-95868D56762E (default, to sid-A1DCC015-7407-4D15-80AB-4AC299655E72)
                    // and sid-BF908D03-AB64-4DE5-931B-5CB7F5AF78C7 (conditional, to sid-63049054-FF0D-448E-A42E-7B917601D74C)
                    if (conditions & 1 == 1) {
                        // conditional flow
                        _tokenState |= 2; // sid-63049054-FF0D-448E-A42E-7B917601D74C
                    } else {
                        // default flow
                        _tokenState |= 16; // sid-A1DCC015-7407-4D15-80AB-4AC299655E72
                    }
                    continue;
                }
            }
            // <--- sid-63049054-FF0D-448E-A42E-7B917601D74C Fehlende Unterlagen anfordern --->
            if (_tokenState & 2 == 2) {
                if (id == 1 && msg.sender == participants[2]) {
                    // Transition: deactivate current, activate next state (sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F)
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    continue;
                }
            }
            // <--- sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F Fehlende Unterlagen schicken --->
            if (_tokenState & 4 == 4) {
                if (id == 2 && msg.sender == participants[4]) {
                    // Transition: deactivate current, activate next state (to sid-A1DCC015-7407-4D15-80AB-4AC299655E72)
                    _tokenState &= ~uint(4);
                    _tokenState |= 16;
                    continue;
                }
            }
            // <--- sid-A1DCC015-7407-4D15-80AB-4AC299655E72 (gateway, converging) --->
            // sid-A1DCC015-7407-4D15-80AB-4AC299655E72 is a converging XOR with two incoming,
            // so it activates sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D after incoming is ready.
            if (_tokenState & 16 == 16) {
                // Both incoming to sid-A1DCC015-7407-4D15-80AB-4AC299655E72 are from either sid-9153A3B6-9D23-44BA-A624-2B6C91C8355F or sid-C03C28F6-BD2B-46DC-BE33-9AAF77C48157's default path.
                // Since this is XOR, any one will do, so we just activate the next.
                // Transition: deactivate current, activate next state (sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D)
                _tokenState &= ~uint(16);
                _tokenState |= 32;
                continue;
            }
            // <--- sid-834869E9-BC7C-41F5-8A4E-FD7DC06D693D (Bewerbung ausreichend ?) --->
            if (_tokenState & 32 == 32) {
                // Two outgoing: sid-2F3AC027-22F1-4D6A-8A9B-8146D23D732B (conditional, if conditions & 2 == 2, to sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF)
                // sid-882B8A1A-5E7A-4DF9-BFE5-D0F41C10960F (default, to sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9)
                if (conditions & 2 == 2) {
                    // conditional flow
                    _tokenState &= ~uint(32);
                    _tokenState |= 64; // sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF
                    continue;
                } else {
                    // default flow
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9
                    continue;
                }
            }
            // <--- sid-996BBBD2-CA44-45A3-BD54-6C7090363FBF Zusage senden --->
            if (_tokenState & 64 == 64) {
                if (id == 3 && msg.sender == participants[6]) {
                    // Transition: deactivate current, activate next state (sid-684ECB46-310F-4D15-9C70-6CE7F49A771F)
                    _tokenState &= ~uint(64);
                    _tokenState |= 256;
                    continue;
                }
            }
            // <--- sid-510EFA3E-DFC7-4FCE-A5B1-57AB528CFBB9 Absage senden --->
            if (_tokenState & 128 == 128) {
                if (id == 4 && msg.sender == participants[8]) {
                    // Transition: deactivate current, activate next state (sid-684ECB46-310F-4D15-9C70-6CE7F49A771F)
                    _tokenState &= ~uint(128);
                    _tokenState |= 256;
                    continue;
                }
            }
            // <--- sid-684ECB46-310F-4D15-9C70-6CE7F49A771F (gateway, converging) --->
            // converging XOR: after either Zusage or Absage, go to end
            if (_tokenState & 256 == 256) {
                // Transition: deactivate current, set to end (tokenState = 0)
                _tokenState &= ~uint(256);
                _tokenState = 0;
                break;
            }
            // No further transitions possible, break
            break;
        }
        tokenState = _tokenState;
    }
}