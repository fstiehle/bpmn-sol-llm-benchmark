// test openai/gpt-4.1 - two-shot at 2025-06-12T20:40:33.607Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_3b5e1e61_6b14_4120_b06e_7436bebbcf78 {
  uint public tokenState = 1;
  address[14] public participants;
  uint public conditions;
  constructor(address[14] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-94F70433-8341-46E2-BDF2-4618E585F5BF TAKE_ORDER
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[1]) {
        // <--- custom code for TAKE_ORDER here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      // sid-BEA42E4E-8B88-4FFE-BB71-CE36365C328F RECEIVE_ORDER
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for RECEIVE_ORDER here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      // sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD PREPARE_ORDER
      if (_tokenState & 8 == 8) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for PREPARE_ORDER here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue; 
        }
      }
      // sid-C379B774-4A75-45FB-90E2-803FCA4E186B SERVE_ORDER
      if (_tokenState & 16 == 16) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for SERVE_ORDER here --->
        _tokenState &= ~uint(16);
        _tokenState |= 32;
        id = 0;
        continue; 
        }
      }
      // sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 RECEIVE_ORDER (Chef)
      if (_tokenState & 32 == 32) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for RECEIVE_ORDER (Chef) here --->
        _tokenState &= ~uint(32);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      // sid-2F7E36B3-59B6-4382-8BD1-91129722202E ASSESS_PREPARED_ORDER
      if (_tokenState & 64 == 64) {
        if (6 == id && msg.sender == participants[10]) {
        // <--- custom code for ASSESS_PREPARED_ORDER here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      // sid-3A161C1A-E002-42B1-8D32-B26788B81967 RECEIVE_ORDER (Guest)
      if (_tokenState & 256 == 256) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for RECEIVE_ORDER (Guest) here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      // Exclusive Gateway: sid-AB9344BF_BDEE_478F_9F85_1838E22FCA17
      // token: 4 (bit 3)
      if (_tokenState & 4 == 4) {
        bool transitioned = false;
        // condition: conditions & 1 == 1   (sid-2ADF0174-B696-4AF9-B190-CE6FB4D373D3)
        if (conditions & 1 == 1) {
          _tokenState &= ~uint(4);
          _tokenState |= 32;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-7088DFDC-1D7F-4AF7-B59E-00259C0C9BFF
          _tokenState &= ~uint(4);
          _tokenState |= 8;
        }
        continue; 
      }
      // Exclusive Gateway: sid-B4CD4217_5C75_403F_BB21_36AC69ED9243
      // token: 128 (bit 7)
      if (_tokenState & 128 == 128) {
        bool transitioned = false;
        // condition: conditions & 2 == 2 (sid-4E6DD272-399E-4836-B5A3-004B381C1ADA)
        if (conditions & 2 == 2) {
          _tokenState &= ~uint(128);
          _tokenState |= 16;
          transitioned = true;
        }
        if (!transitioned) {
          // default: sid-A6C9FA80-1284-49AA-B41F-454F1F405573
          _tokenState &= ~uint(128);
          _tokenState |= 32;
        }
        continue;
      }
      // transition from sid-C379B774-4A75-45FB-90E2-803FCA4E186B to sid-3A161C1A-E002-42B1-8D32-B26788B81967
      // already handled above with token 16 -> 32 (gateway logic), then to 256 (after serve)
      // transition from sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 to sid-2F7E36B3-59B6-4382-8BD1-91129722202E
      if (_tokenState & 32 == 32) {
        // Already handled above with task 5
      }
      // transition from sid-2F7E36B3-59B6-4382-8BD1-91129722202E to sid-B4CD4217-5C75-403F-BB21-36AC69ED9243
      if (_tokenState & 64 == 64) {
        // Already handled above with task 6
      }
      // transition from sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD to sid-C379B774-4A75-45FB-90E2-803FCA4E186B
      if (_tokenState & 8 == 8) {
        // Already handled above with task 4
      }
      // transition from sid-BEA42E4E-8B88-4FFE-BB71-CE36365C328F to Gateway sid-AB9344BF_BDEE_478F_9F85_1838E22FCA17 (token 4)
      // Already handled above
      // transition from sid-94F70433-8341-46E2-BDF2-4618E585F5BF to sid-BEA42E4E-8B88-4FFE-BB71-CE36365C328F
      // Already handled above
      // transition from sid-3A161C1A-E002-42B1-8D32-B26788B81967 to END
      // Already handled above with task 7
      // transition from sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD to sid-C379B774-4A75-45FB-90E2-803FCA4E186B
      // Already handled above
      // transition from sid-C379B774-4A75-45FB-90E2-803FCA4E186B to sid-3A161C1A-E002-42B1-8D32-B26788B81967
      // Already handled above
      // transition from sid-2F7E36B3-59B6-4382-8BD1-91129722202E to sid-B4CD4217-5C75-403F-BB21-36AC69ED9243
      // Already handled above
      // transition from sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 to sid-2F7E36B3-59B6-4382-8BD1-91129722202E
      // Already handled above
      // transition from sid-BEA42E4E-8B88-4FFE-BB71-CE36365C328F to Gateway sid-AB9344BF_BDEE_478F_9F85_1838E22FCA17
      // Already handled above
      // transition from sid-AB9344BF_BDEE_478F_9F85_1838E22FCA17 to sid-C0851B6B-257A-46E5-A1D0-866B5BC469AD or sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37
      // Already handled above
      // transition from sid-B4CD4217-5C75-403F-BB21-36AC69ED9243 to sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 or sid-C379B774-4A75-45FB-90E2-803FCA4E186B
      // Already handled above
      // transition from sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 to sid-2F7E36B3-59B6-4382-8BD1-91129722202E
      // Already handled above
      // transition from sid-2F7E36B3-59B6-4382-8BD1-91129722202E to sid-B4CD4217-5C75-403F-BB21-36AC69ED9243
      // Already handled above
      // transition from sid-B4CD4217-5C75-403F-BB21-36AC69ED9243 to sid-9220F603-B5F1-4BEB-99A8-BF4786E5CD37 or sid-C379B774-4A75-45FB-90E2-803FCA4E186B
      // Already handled above
      // transition from sid-C379B774-4A75-45FB-90E2-803FCA4E186B to sid-3A161C1A-E002-42B1-8D32-B26788B81967
      // Already handled above
      // transition from sid-3A161C1A-E002-42B1-8D32-B26788B81967 to END
      // Already handled above
      // Default break if no transition
      break;
    }
    tokenState = _tokenState;
  }
}
