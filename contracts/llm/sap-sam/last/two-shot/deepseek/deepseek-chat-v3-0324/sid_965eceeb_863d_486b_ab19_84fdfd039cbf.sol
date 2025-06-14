// test deepseek/deepseek-chat-v3-0324 - two-shot at 2025-06-13T22:13:54.294Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract deepseek_deepseek_chat_v3_0324_two_shot_sid_965eceeb_863d_486b_ab19_84fdfd039cbf {
    uint public tokenState = 1;
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
        while(_tokenState != 0) {
            if (_tokenState & 1 == 1) {
                // <--- sid-479EBA42-73E6-4E4C-AA26-5A282E57E8E2 Ausleihbestellung beantragen --->
                if (1 == id && msg.sender == participants[0]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(1);
                    _tokenState |= 2;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 2 == 2) {
                // <--- sid-3BDBEE51-AB23-41D0-9720-EB6AB0B40207 Buechersendung uebergeben --->
                if (2 == id && msg.sender == participants[2]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(2);
                    _tokenState |= 4;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 4 == 4) {
                // <--- sid-27248DE0-C31D-4ED9-85F2-55B5D89B8F92 Ware abliefern --->
                if (3 == id && msg.sender == participants[4]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(4);
                    _tokenState |= 8;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 8 == 8) {
                // <--- sid-F00A6239-4C5D-447E-B395-88405CDCCF62 Buechersendung zurueckschicken --->
                if (4 == id && msg.sender == participants[6]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(8);
                    _tokenState |= 16;
                    id = 0;
                    continue;
                }
            }
            if (_tokenState & 16 == 16) {
                // <--- sid-0E2CDEEA-AEAB-455E-AA3E-8EC8D1C1CED3 Ware abliefern --->
                if (5 == id && msg.sender == participants[8]) {
                    // <--- custom code for task here --->
                    _tokenState &= ~uint(16);
                    _tokenState |= 0;
                    break; // is end
                }
            }
            break;
        }
        tokenState = _tokenState;
    }
}
