// test openai/gpt-4.1 - two-shot at 2025-06-12T00:14:03.558Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
  uint public tokenState = 1;
  address[38] public participants;
  uint public conditions;
  constructor(address[38] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D Order_with_requiered_delivery_date
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for sid-53BADAC0-8DE2-4719-B01C-E765AE6E0B8D here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-87411925-6ACB-4399-9FDF-AB3A02B97185 Confirms_order
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for sid-87411925-6ACB-4399-9FDF-AB3A02B97185 here --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44 Confirms_order_with_updated_project_date
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for sid-75D866D6-6A0B-49E9-8F37-C1542A0FCF44 here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        id = 0;
        continue;
        }
      }
      // sid-79F7C5CA-0BB9-412D-82B7-243830F73242 Request_payment_details
      if (_tokenState & 64 == 64) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for sid-79F7C5CA-0BB9-412D-82B7-243830F73242 here --->
        _tokenState &= ~uint(64);
        _tokenState |= 128+256;
        id = 0;
        continue;
        }
      }
      // sid-B069E27A-D33B-46B4-93D2-8368A4696004 Send_payment_method
      if (_tokenState & 128 == 128) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for sid-B069E27A-D33B-46B4-93D2-8368A4696004 here --->
        _tokenState &= ~uint(128);
        _tokenState |= 2048;
        id = 0;
        continue;
        }
      }
      // sid-B6FC6638-517A-4341-8D5D-766673E6C7BC Request_payment_details
      if (_tokenState & 256 == 256) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for sid-B6FC6638-517A-4341-8D5D-766673E6C7BC here --->
        _tokenState &= ~uint(256);
        _tokenState |= 512;
        id = 0;
        continue;
        }
      }
      // sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74 Make_payment
      if (_tokenState & 2048 == 2048) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for sid-E3F01DC9-C88D-47D1-9C0F-B31067D73D74 here --->
        _tokenState &= ~uint(2048);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // sid-C711548A-C1DA-42C7-B342-7CE7FC79369C Receive_payment_method
      if (_tokenState & 512 == 512) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for sid-C711548A-C1DA-42C7-B342-7CE7FC79369C here --->
        _tokenState &= ~uint(512);
        _tokenState |= 1024;
        id = 0;
        continue;
        }
      }
      // sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC Make_payment
      if (_tokenState & 1024 == 1024) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for sid-BBE04049-2A5B-4133-BB93-4D6C82A139AC here --->
        _tokenState &= ~uint(1024);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1 Sends_notification_first_batch
      if (_tokenState & 16384 == 16384) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for sid-0133DF4D-71C7-454B-BD30-EDC3326B6BF1 here --->
        _tokenState &= ~uint(16384);
        _tokenState |= 65536;
        id = 0;
        continue;
        }
      }
      // sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D Sends_shipment
      if (_tokenState & 32768 == 32768) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for sid-0B7409CA-9C11-41B3-9C5F-AF9E4E6F4E4D here --->
        _tokenState &= ~uint(32768);
        _tokenState |= 131072;
        id = 0;
        continue;
        }
      }
      // sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0 Notification_for_the_first_batch_of_CPU_shipment
      if (_tokenState & 262144 == 262144) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for sid-907F86B4-E43C-42A4-84E6-42AF0A436CC0 here --->
        _tokenState &= ~uint(262144);
        _tokenState |= 524288;
        id = 0;
        continue;
        }
      }
      // sid-36AEC271-211C-45AF-98E7-A36DCC243FE2 Sends_shipment
      if (_tokenState & 524288 == 524288) {
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for sid-36AEC271-211C-45AF-98E7-A36DCC243FE2 here --->
        _tokenState &= ~uint(524288);
        _tokenState |= 1048576;
        id = 0;
        continue;
        }
      }
      // sid-05B03332-15F8-4230-9323-5EB426F59D83 Makes_reclamation
      if (_tokenState & 2097152 == 2097152) {
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for sid-05B03332-15F8-4230-9323-5EB426F59D83 here --->
        _tokenState &= ~uint(2097152);
        _tokenState |= 4194304+8388608;
        id = 0;
        continue;
        }
      }
      // sid-76B84570-72AA-46A3-B8CC-E05210FBA769 Announces_problems_with_the_materials
      if (_tokenState & 4194304 == 4194304) {
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for sid-76B84570-72AA-46A3-B8CC-E05210FBA769 here --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 16777216;
        id = 0;
        continue;
        }
      }
      // sid-8224411A-EC96-46EA-9628-AC493844BADA Announces_problems_with_the_CPUs
      if (_tokenState & 8388608 == 8388608) {
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for sid-8224411A-EC96-46EA-9628-AC493844BADA here --->
        _tokenState &= ~uint(8388608);
        _tokenState |= 67108864;
        id = 0;
        continue;
        }
      }
      // sid-AA70870B-9C86-4611-881F-538762AEDBBF Sends_reclamation
      if (_tokenState & 16777216 == 16777216) {
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for sid-AA70870B-9C86-4611-881F-538762AEDBBF here --->
        _tokenState &= ~uint(16777216);
        _tokenState |= 134217728;
        id = 0;
        continue;
        }
      }
      // sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B Sends_the_result_from_the_parts_check
      if (_tokenState & 134217728 == 134217728) {
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for sid-0B70B2DC-A7C5-471A-AE6C-7AA0F4D2B20B here --->
        _tokenState &= ~uint(134217728);
        _tokenState |= 536870912;
        id = 0;
        continue;
        }
      }
      // sid-61585682-6A88-4404-A770-8142C2B15ACC Sends_the_results_from_the_diagnostics
      if (_tokenState & 536870912 == 536870912) {
        if (19 == id && msg.sender == participants[36]) {
        // <--- custom code for sid-61585682-6A88-4404-A770-8142C2B15ACC here --->
        _tokenState &= ~uint(536870912);
        _tokenState |= 0;
        break;
        }
      }
      // Parallel Gateway: sid-8A856537-7AC4-4586-BC1A-66678EC8B506 (Diverging)
      if (_tokenState & 2 == 2) {
        // <--- parallel split: sid-8A856537-7AC4-4586-BC1A-66678EC8B506 --->
        _tokenState &= ~uint(2);
        _tokenState |= 4+8;
        continue;
      }
      // Parallel Gateway: sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3 (Converging)
      if (_tokenState & 48 == 48) {
        // <--- parallel join: sid-E9BBA1F8-0485-423F-85BA-5E0636746FD3 --->
        _tokenState &= ~uint(48);
        _tokenState |= 64;
        continue;
      }
      // Parallel Gateway: sid-C8749F03-EA4F-4134-A956-99029BA412C0 (Diverging)
      if (_tokenState & 64 == 64) {
        // <--- parallel split: sid-C8749F03-EA4F-4134-A956-99029BA412C0 --->
        _tokenState &= ~uint(64);
        _tokenState |= 128+256;
        continue;
      }
      // Parallel Gateway: sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3 (Converging)
      if (_tokenState & 6144 == 6144) {
        // <--- parallel join: sid-D5B78B78-6ADD-4433-B7BF-43BD77338DC3 --->
        _tokenState &= ~uint(6144);
        _tokenState |= 16384+32768;
        continue;
      }
      // Parallel Gateway: sid-49433071-9A98-4150-BCC9-19A518103FFC (Diverging)
      if (_tokenState & 16384 == 16384) {
        // <--- parallel split: sid-49433071-9A98-4150-BCC9-19A518103FFC --->
        _tokenState &= ~uint(16384);
        _tokenState |= 32768+65536;
        continue;
      }
      // Parallel Gateway: sid-59FD9696-33BA-4281-B983-16C678D60C29 (Converging)
      if (_tokenState & 196608 == 196608) {
        // <--- parallel join: sid-59FD9696-33BA-4281-B983-16C678D60C29 --->
        _tokenState &= ~uint(196608);
        _tokenState |= 262144;
        continue;
      }
      // Exclusive Gateway: sid-6F6BBE1D-EDBA-459B-9FF8-096332A86F9D
      if (_tokenState & 1048576 == 1048576) {
        bool matched = false;
        if (conditions & 1 == 1) {
          // <--- (sid-9368A649-4BB6-4E5B-9782-89EB6A9498DB) conditions & 1 == 1 --->
          _tokenState &= ~uint(1048576);
          _tokenState |= 0;
          matched = true;
          break;
        }
        if (!matched) {
          // <--- default (sid-D15D1DD7-7876-4689-BDCD-4F09468903CF) --->
          _tokenState &= ~uint(1048576);
          _tokenState |= 2097152;
          continue;
        }
      }
      // Exclusive Gateway: sid-F5E250E9-8224-4C08-96CC-5B213FE8E878
      if (_tokenState & 4194304 == 4194304 || _tokenState & 8388608 == 8388608) {
        bool matched = false;
        if (conditions & 2 == 2) {
          // <--- (sid-E08778E6-6311-4D47-B096-8552EB34796E) conditions & 2 == 2 --->
          _tokenState &= ~uint(4194304);
          _tokenState &= ~uint(8388608);
          _tokenState |= 67108864;
          matched = true;
          continue;
        }
        if (!matched) {
          // <--- default (sid-F03B0771-9D44-44E6-AAF9-771C70EDB97A) --->
          _tokenState &= ~uint(4194304);
          _tokenState |= 16777216;
          continue;
        }
      }
      // Exclusive Gateway: sid-7D650B82-5367-4CA4-B00C-EECE35C1BEDD
      if (_tokenState & 67108864 == 67108864 || _tokenState & 134217728 == 134217728) {
        // <--- converge to sid-B2C82EF6-21FC-441F-9440-4ED95AFFDFC7 --->
        _tokenState &= ~uint(67108864);
        _tokenState &= ~uint(134217728);
        _tokenState |= 536870912;
        continue;
      }
      break;
    }
    tokenState = _tokenState;
  }
}