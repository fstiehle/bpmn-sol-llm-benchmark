// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:13:47.692Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_a9d070e4_8c5c_429e_971e_e2a088deef78 {
    uint public tokenState = 1; // Start event active
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
            // Start Event (sid-FF738DAC-E709-4D10-9110-5BB8E3C44009)
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Move to Task 1 (sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135)
                continue;
            }

            // Task 1: Anfrage Pauschalreise (sid-AF0FE7CF-C1F5-4EA9-BA11-5A4DFEC56135)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Move to Parallel Gateway Diverging (sid-ADEE584F-2A54-4B9B-A3C7-37727002A798)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-ADEE584F-2A54-4B9B-A3C7-37727002A798)
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8 | 16; // Activate both Task 2 and Task 3 (sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C, sid-56679A2F-AC09-4588-A72E-9FF2B290B59B)
                continue;
            }

            // Task 2: Angebotsanfrage (sid-40E273C6-C44C-40B8-8F05-F5F89563CB8C)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Move to Task 4 (sid-06110881-69C4-4256-9D83-C6D2F37A610B)
                    id = 0;
                    continue;
                }
            }

            // Task 3: Angebotsanfrage (sid-56679A2F-AC09-4588-A72E-9FF2B290B59B)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 64; // Move to Task 5 (sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E)
                    id = 0;
                    continue;
                }
            }

            // Task 4: Ruecksendung von Angebot (sid-06110881-69C4-4256-9D83-C6D2F37A610B)
            if (_tokenState & 32 == 32) {
                if (4 == id && msg.sender == participants[6]) {
                    _tokenState &= ~uint(32);
                    _tokenState |= 128; // Move to Parallel Gateway Converging (sid-C4048646-CFB3-429D-A337-2A144C2F56AE) partial
                    id = 0;
                    continue;
                }
            }

            // Task 5: Ruecksendung von Angebot (sid-1F75B0F5-AF76-41BC-AF30-AD931FD06C0E)
            if (_tokenState & 64 == 64) {
                if (5 == id && msg.sender == participants[8]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 256; // Move to Parallel Gateway Converging (sid-C4048646-CFB3-429D-A337-2A144C2F56AE) partial
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-C4048646-CFB3-429D-A337-2A144C2F56AE)
            if (_tokenState & 128 == 128 && _tokenState & 256 == 256) {
                _tokenState &= ~uint(128 | 256);
                _tokenState |= 512; // Move to Task 6 (sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6)
                continue;
            }

            // Task 6: Uebermittelt Angebote und Rechnung (sid-84CBA74D-7DE7-4B00-9BBF-B9A0CA9709C6)
            if (_tokenState & 512 == 512) {
                if (6 == id && msg.sender == participants[10]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Move to Parallel Gateway Diverging (sid-4D7F7F65-2E2B-4812-AD70-399980C84C74)
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Diverging (sid-4D7F7F65-2E2B-4812-AD70-399980C84C74)
            if (_tokenState & 1024 == 1024) {
                _tokenState &= ~uint(1024);
                _tokenState |= 2048 | 4096; // Activate both Task 7 and Task 8 (sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F, sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087)
                continue;
            }

            // Task 7: Buchungsanfrage (sid-0AA04BAA-5E44-4F09-A382-F6FF6FF8C87F)
            if (_tokenState & 2048 == 2048) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 8192; // Move to Task 10 (sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5)
                    id = 0;
                    continue;
                }
            }

            // Task 8: Buchungsanfrage (sid-9D35829C-FE97-4F13-BBD4-A39A59B7A087)
            if (_tokenState & 4096 == 4096) {
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 16384; // Move to Task 9 (sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708)
                    id = 0;
                    continue;
                }
            }

            // Task 9: Buchungsbestaetigung und Rechnung (sid-87DFE548-5C64-4DE5-BCE2-C4136BA82708)
            if (_tokenState & 16384 == 16384) {
                if (9 == id && msg.sender == participants[16]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 32768; // Move to Parallel Gateway Converging (sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578) partial
                    id = 0;
                    continue;
                }
            }

            // Task 10: Buchungsbestaetigung und Rechnung (sid-12EAEC8B-6F08-4829-8C6D-7FBEE84059C5)
            if (_tokenState & 8192 == 8192) {
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(8192);
                    _tokenState |= 65536; // Move to Parallel Gateway Converging (sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578) partial
                    id = 0;
                    continue;
                }
            }

            // Parallel Gateway Converging (sid-0DEE50B8-E61D-4C2D-BE78-8A844E94B578)
            if (_tokenState & 32768 == 32768 && _tokenState & 65536 == 65536) {
                _tokenState &= ~uint(32768 | 65536);
                _tokenState |= 131072; // Move to End Event (sid-A0013928-D9B7-4E24-A000-3C762774D659)
                continue;
            }

            // End Event (sid-A0013928-D9B7-4E24-A000-3C762774D659)
            if (_tokenState & 131072 == 131072) {
                _tokenState = 0; // Terminate process
                break;
            }

            break;
        }
        tokenState = _tokenState;
    }
}