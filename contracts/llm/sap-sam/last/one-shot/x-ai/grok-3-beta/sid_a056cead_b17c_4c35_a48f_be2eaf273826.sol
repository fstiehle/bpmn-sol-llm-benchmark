// test x-ai/grok-3-beta - one-shot at 2025-06-12T08:10:49.212Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract x_ai_grok_3_beta_one_shot_sid_a056cead_b17c_4c35_a48f_be2eaf273826 {
    uint public tokenState = 1; // Start with the StartEvent active
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
            // StartEvent (sid-3D3D3CD7-34BB-48F0-96BE-DB072E5C7B4D)
            if (_tokenState & 1 == 1) {
                // Automatically transition to first task
                _tokenState &= ~uint(1);
                _tokenState |= 2; // Activate sid-109D8857-8D2A-43D2-A758-1A5F8400F151 (Task 1)
                continue;
            }

            // Task 1: sid-109D8857-8D2A-43D2-A758-1A5F8400F151 (Anfrage stellen)
            if (_tokenState & 2 == 2) {
                if (1 == id && msg.sender == participants[0]) { // Initiating participant sid-4893365F-4296-4662-BF88-EC30EEF5BB12
                    _tokenState &= ~uint(2);
                    _tokenState |= 4; // Activate sid-E6766DB1-5AF0-4544-A121-3E521E74C396 (Converging Gateway)
                    id = 0;
                    continue;
                }
            }

            // Converging Gateway: sid-E6766DB1-5AF0-4544-A121-3E521E74C396
            if (_tokenState & 4 == 4) {
                _tokenState &= ~uint(4);
                _tokenState |= 8; // Activate sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B (Task 2)
                continue;
            }

            // Task 2: sid-CC26712E-D5D3-490C-83AB-DCB2D12F264B (Angebot vorlegen)
            if (_tokenState & 8 == 8) {
                if (2 == id && msg.sender == participants[2]) { // Initiating participant sid-DC2E781E-7D84-4848-B922-089700C62E1B
                    _tokenState &= ~uint(8);
                    _tokenState |= 16; // Activate sid-A95EFF98-3C75-4DB7-A9EB-06FECE663C1F (Diverging Gateway)
                    id = 0;
                    continue;
                }
            }

            // Diverging Gateway: sid-A95EFF98-3C75-4DB7-A9EB-06FECE663C1F
            if (_tokenState & 16 == 16) {
                _tokenState &= ~uint(16);
                if (conditions & 1 == 1) {
                    _tokenState |= 32; // Activate sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A (Task 3)
                } else if (conditions & 2 == 2) {
                    _tokenState |= 64; // Activate sid-70C82863-4B96-40A8-B83F-4FD8E5766088 (Task 4)
                } else {
                    _tokenState |= 128; // Default to sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2 (Task 5)
                }
                continue;
            }

            // Task 3: sid-A7AE8747-0BE0-49B8-BF04-E388F7848A1A (Absage erteilen)
            if (_tokenState & 32 == 32) {
                if (3 == id && msg.sender == participants[4]) { // Initiating participant sid-8FDC0076-5C42-4C89-BA6C-A16F2D6D9D3F
                    _tokenState &= ~uint(32);
                    _tokenState |= 1024; // Activate EndEvent sid-FBE79FEF-4FE5-4C24-B86B-525A9C982C39
                    id = 0;
                    continue;
                }
            }

            // Task 4: sid-70C82863-4B96-40A8-B83F-4FD8E5766088 (Aenderungswuensche mitteilen)
            if (_tokenState & 64 == 64) {
                if (4 == id && msg.sender == participants[6]) { // Initiating participant sid-A90DD642-AF79-472D-9E67-AB1A65D2ECED
                    _tokenState &= ~uint(64);
                    _tokenState |= 4; // Activate sid-E6766DB1-5AF0-4544-A121-3E521E74C396 (Converging Gateway)
                    id = 0;
                    continue;
                }
            }

            // Task 5: sid-837B8207-0D05-4669-BAEE-D9F5E5F4A1D2 (Auftrag erteilen)
            if (_tokenState & 128 == 128) {
                if (5 == id && msg.sender == participants[8]) { // Initiating participant sid-EDEF82E1-BFF6-489C-9AEE-5CDD91D8FD2A
                    _tokenState &= ~uint(128);
                    _tokenState |= 256; // Activate sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 (Task 6)
                    id = 0;
                    continue;
                }
            }

            // Task 6: sid-209DC630-CD6C-441D-87C1-A5762EB6AEB3 (Verfuegbarkeit anfragen)
            if (_tokenState & 256 == 256) {
                if (6 == id && msg.sender == participants[10]) { // Initiating participant sid-5F90BA1E-4A7C-4D9E-9A40-EB94CBA1ECD3
                    _tokenState &= ~uint(256);
                    _tokenState |= 512; // Activate sid-08D1DFF5-E462-4E22-876D-382B8314DAA1 (Task 7)
                    id = 0;
                    continue;
                }
            }

            // Task 7: sid-08D1DFF5-E462-4E22-876D-382B8314DAA1 (Grafik erstellen lassen)
            if (_tokenState & 512 == 512) {
                if (7 == id && msg.sender == participants[12]) { // Initiating participant sid-9BA8535A-6608-4573-AFB7-331222DC6D73
                    _tokenState &= ~uint(512);
                    _tokenState |= 2048; // Activate sid-61791D53-81A8-4C6E-B762-852EF1CDEAEB (Task 8)
                    id = 0;
                    continue;
                }
            }

            // Task 8: sid-61791D53-81A8-4C6E-B762-852EF1CDEAEB (Freigabe holen)
            if (_tokenState & 2048 == 2048) {
                if (8 == id && msg.sender == participants[14]) { // Initiating participant sid-4AA2A871-629A-4B84-AEB0-6E04BF26073E
                    _tokenState &= ~uint(2048);
                    _tokenState |= 1024; // Activate EndEvent sid-FBE79FEF-4FE5-4C24-B86B-525A9C982C39
                    id = 0;
                    continue;
                }
            }

            // EndEvent (sid-FBE79FEF-4FE5-4C24-B86B-525A9C982C39)
            if (_tokenState & 1024 == 1024) {
                _tokenState = 0; // Terminate process
                break;
            }

            break; // Exit loop if no transitions or tasks are executed
        }
        tokenState = _tokenState;
    }
}