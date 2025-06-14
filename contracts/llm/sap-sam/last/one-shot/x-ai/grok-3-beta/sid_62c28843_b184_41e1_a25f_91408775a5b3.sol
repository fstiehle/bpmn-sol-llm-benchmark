// test x-ai/grok-3-beta - one-shot at 2025-06-12T07:55:39.067Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_62c28843_b184_41e1_a25f_91408775a5b3 {
    uint public tokenState = 1; // Start with the start event active
    address[30] public participants;
    uint public conditions;

    constructor(address[30] memory _participants) {
        participants = _participants;
    }

    function setConditions(uint _conditions) external {
        conditions = _conditions;
    }

    function enact(uint id) external {
        uint _tokenState = tokenState;
        while (_tokenState != 0) {
            // Start Event to Gateway sid-0E664DC1-043E-430E-8307-65C3D148E742
            if (_tokenState & 1 == 1) {
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate gateway sid-0E664DC1-043E-430E-8307-65C3D148E742
                continue;
            }

            // Gateway sid-0E664DC1-043E-430E-8307-65C3D148E742 (Diverging)
            if (_tokenState & 2 == 2) {
                _tokenState &= ~uint(2);
                if (conditions & 1 == 1) {
                    _tokenState |= 4; // Task 1: sid-48DA2ADE-5B7F-4D68-A3B3-7271C36DD57E
                } else if (conditions & 2 == 2) {
                    _tokenState |= 8; // Task 2: sid-D82F561F-771D-43BC-B4FB-D165CF04BB6F
                } else {
                    _tokenState |= 16; // Default: Task 3: sid-5397633C-B91B-41F6-88CB-F6A756F949F0
                }
                continue;
            }

            // Task 1: sid-48DA2ADE-5B7F-4D68-A3B3-7271C36DD57E (An Warteschlange 1 anstellen)
            if (_tokenState & 4 == 4) {
                if (1 == id && msg.sender == participants[0]) {
                    _tokenState &= ~uint(4);
                    _tokenState |= 32; // Converging gateway sid-9B21D9F4-2000-4DCB-845B-DFF3162C6CF9
                    id = 0;
                    continue;
                }
            }

            // Task 2: sid-D82F561F-771D-43BC-B4FB-D165CF04BB6F (An Warteschlange 3 anstellen)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) {
                    _tokenState &= ~uint(8);
                    _tokenState |= 32; // Converging gateway sid-9B21D9F4-2000-4DCB-845B-DFF3162C6CF9
                    id = 0;
                    continue;
                }
            }

            // Task 3: sid-5397633C-B91B-41F6-88CB-F6A756F949F0 (An Warteschlange 2 anstellen)
            if (_tokenState & 16 == 16) {
                if (3 == id && msg.sender == participants[4]) {
                    _tokenState &= ~uint(16);
                    _tokenState |= 32; // Converging gateway sid-9B21D9F4-2000-4DCB-845B-DFF3162C6CF9
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-9B21D9F4-2000-4DCB-845B-DFF3162C6CF9 (Converging)
            if (_tokenState & 32 == 32) {
                _tokenState &= ~uint(32);
                _tokenState |= 64; // Task 4: sid-F0099824-993E-449E-AFF1-0F315FFD9BCC
                continue;
            }

            // Task 4: sid-F0099824-993E-449E-AFF1-0F315FFD9BCC (Teller bereitstellen)
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[7]) {
                    _tokenState &= ~uint(64);
                    _tokenState |= 128; // Task 5: sid-278CD03B-5B0D-4A61-9156-3D00C6D77487
                    id = 0;
                    continue;
                }
            }

            // Task 5: sid-278CD03B-5B0D-4A61-9156-3D00C6D77487 (Teller befuellen)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[9]) {
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Task 6: sid-CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63
                    id = 0;
                    continue;
                }
            }

            // Task 6: sid-CFC48BBD-0CA5-4A8A-8981-4818C1BD4E63 (Teller auf die Theke stellen)
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[11]) {
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Task 7: sid-AA331F9C-61AD-43DF-B9FA-336EBE95FB64
                    id = 0;
                    continue;
                }
            }

            // Task 7: sid-AA331F9C-61AD-43DF-B9FA-336EBE95FB64 (Teller von der Theke nehmen)
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[12]) {
                    _tokenState &= ~uint(512);
                    _tokenState |= 1024; // Task 8: sid-720465BA-FA50-4AA1-B159-6170FAE0CD5C
                    id = 0;
                    continue;
                }
            }

            // Task 8: sid-720465BA-FA50-4AA1-B159-6170FAE0CD5C (Zur Kassen begeben)
            if (_tokenState & 1024 == 1024) {
                if (8 == id && msg.sender == participants[14]) {
                    _tokenState &= ~uint(1024);
                    _tokenState |= 2048; // Task 9: sid-85FB1251-02A7-451C-ABF2-A9A4656E44A4
                    id = 0;
                    continue;
                }
            }

            // Task 9: sid-85FB1251-02A7-451C-ABF2-A9A4656E44A4 (Beitrag ermitteln)
            if (_tokenState & 2048 == 2048) {
                if (9 == id && msg.sender == participants[17]) {
                    _tokenState &= ~uint(2048);
                    _tokenState |= 4096; // Task 10: sid-C888D461-1BB6-440F-98C5-D69DC47FFBDB
                    id = 0;
                    continue;
                }
            }

            // Task 10: sid-C888D461-1BB6-440F-98C5-D69DC47FFBDB (Forderungen bezahlen)
            if (_tokenState & 4096 == 4096) {
                if (10 == id && msg.sender == participants[18]) {
                    _tokenState &= ~uint(4096);
                    _tokenState |= 8192; // Gateway sid-A000BD59-3499-4992-9CD6-05D98317125F
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-A000BD59-3499-4992-9CD6-05D98317125F (Diverging)
            if (_tokenState & 8192 == 8192) {
                _tokenState &= ~uint(8192);
                if (conditions & 4 == 4) {
                    _tokenState |= 16384; // Task 13: sid-9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095
                } else {
                    _tokenState |= 32768; // Default: Task 12: sid-841B139E-9C36-4A4A-8765-6617A2F7A244
                }
                continue;
            }

            // Task 12: sid-841B139E-9C36-4A4A-8765-6617A2F7A244 (Einzahlungsbetrag einkassieren)
            if (_tokenState & 32768 == 32768) {
                if (12 == id && msg.sender == participants[23]) {
                    _tokenState &= ~uint(32768);
                    _tokenState |= 65536; // Task 11: sid-97DF2393-0947-4F00-B69A-FF07EAAD6932
                    id = 0;
                    continue;
                }
            }

            // Task 11: sid-97DF2393-0947-4F00-B69A-FF07EAAD6932 (Wechselgeld ausgeben)
            if (_tokenState & 65536 == 65536) {
                if (11 == id && msg.sender == participants[21]) {
                    _tokenState &= ~uint(65536);
                    _tokenState |= 131072; // Converging gateway sid-63C8A276-02AF-4B9B-9B26-A7156119589D
                    id = 0;
                    continue;
                }
            }

            // Task 13: sid-9F1BC1FD-F32E-42CB-8FD8-5813F1A2E095 (Einzahlungsbetrag einkassieren)
            if (_tokenState & 16384 == 16384) {
                if (13 == id && msg.sender == participants[25]) {
                    _tokenState &= ~uint(16384);
                    _tokenState |= 131072; // Converging gateway sid-63C8A276-02AF-4B9B-9B26-A7156119589D
                    id = 0;
                    continue;
                }
            }

            // Gateway sid-63C8A276-02AF-4B9B-9B26-A7156119589D (Converging)
            if (_tokenState & 131072 == 131072) {
                _tokenState &= ~uint(131072);
                _tokenState |= 262144; // Task 14: sid-25B3FD8F-B874-4A33-B9EA-48CC7F623957
                continue;
            }

            // Task 14: sid-25B3FD8F-B874-4A33-B9EA-48CC7F623957 (Essensplatz suchen)
            if (_tokenState & 262144 == 262144) {
                if (14 == id && msg.sender == participants[26]) {
                    _tokenState &= ~uint(262144);
                    _tokenState |= 524288; // Task 15: sid-0305710C-7E67-4291-9EF5-833B510DA300
                    id = 0;
                    continue;
                }
            }

            // Task 15: sid-0305710C-7E67-4291-9EF5-833B510DA300 (Essen verzehren)
            if (_tokenState & 524288 == 524288) {
                if (15 == id && msg.sender == participants[28]) {
                    _tokenState &= ~uint(524288);
                    _tokenState = 0; // End event reached
                    break;
                }
            }

            break;
        }
        tokenState = _tokenState;
    }
}