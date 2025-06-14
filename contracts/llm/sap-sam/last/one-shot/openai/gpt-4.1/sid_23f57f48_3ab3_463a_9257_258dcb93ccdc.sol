// test openai/gpt-4.1 - one-shot at 2025-06-11T23:29:17.331Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_one_shot_sid_23f57f48_3ab3_463a_9257_258dcb93ccdc {
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
      // <--- sid-53BADAC0_8DE2_4719_B01C_E765AE6E0B8D Order_with_requiered_delivery_date --->
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task 1 Order_with_requiered_delivery_date --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // <--- ParallelGateway sid-8A856537_7AC4_4586_BC1A_66678EC8B506: split --->
      if (_tokenState & 2 == 2) {
        // parallel split: two outgoing
        _tokenState &= ~uint(2);
        _tokenState |= 12;
        continue;
      }
      // <--- sid-87411925_6ACB_4399_9FDF_AB3A02B97185 Confirms_order --->
      if (_tokenState & 4 == 4) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task 2 Confirms_order --->
        _tokenState &= ~uint(4);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // <--- sid-75D866D6_6A0B_49E9_8F37_C1542A0FCF44 Confirms_order_with_updated_project_date --->
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task 3 Confirms_order_with_updated_project_date --->
        _tokenState &= ~uint(8);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // <--- ParallelGateway sid-E9BBA1F8_0485_423F_85BA_5E0636746FD3: join --->
      if (_tokenState & 96 == 96) {
        // join: 2 incoming
        _tokenState &= ~uint(96);
        _tokenState |= 128;
        continue;
      }
      // <--- sid-79F7C5CA_0BB9_412D_82B7_243830F73242 Request_payment_details --->
      if (_tokenState & 128 == 128) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task 4 Request_payment_details --->
        _tokenState &= ~uint(128);
        _tokenState |= 256;
        id = 0;
        continue;
        }
      }
      // <--- ParallelGateway sid-C8749F03_EA4F_4134_A956_99029BA412C0: split --->
      if (_tokenState & 256 == 256) {
        // parallel split: two outgoing
        _tokenState &= ~uint(256);
        _tokenState |= 1536;
        continue;
      }
      // <--- sid-B069E27A_D33B_46B4_93D2_8368A4696004 Send_payment_method --->
      if (_tokenState & 512 == 512) {
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task 5 Send_payment_method --->
        _tokenState &= ~uint(512);
        _tokenState |= 4096;
        id = 0;
        continue;
        }
      }
      // <--- sid-B6FC6638_517A_4341_8D5D_766673E6C7BC Request_payment_details --->
      if (_tokenState & 1024 == 1024) {
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task 6 Request_payment_details --->
        _tokenState &= ~uint(1024);
        _tokenState |= 8192;
        id = 0;
        continue;
        }
      }
      // <--- sid-E3F01DC9_C88D_47D1_9C0F_B31067D73D74 Make_payment --->
      if (_tokenState & 4096 == 4096) {
        if (7 == id && msg.sender == participants[12]) {
        // <--- custom code for task 7 Make_payment --->
        _tokenState &= ~uint(4096);
        _tokenState |= 32768;
        id = 0;
        continue;
        }
      }
      // <--- sid-C711548A_C1DA_42C7_B342_7CE7FC79369C Receive_payment_method --->
      if (_tokenState & 8192 == 8192) {
        if (8 == id && msg.sender == participants[14]) {
        // <--- custom code for task 8 Receive_payment_method --->
        _tokenState &= ~uint(8192);
        _tokenState |= 65536;
        id = 0;
        continue;
        }
      }
      // <--- sid-BBE04049_2A5B_4133_BB93_4D6C82A139AC Make_payment --->
      if (_tokenState & 65536 == 65536) {
        if (9 == id && msg.sender == participants[16]) {
        // <--- custom code for task 9 Make_payment --->
        _tokenState &= ~uint(65536);
        _tokenState |= 131072;
        id = 0;
        continue;
        }
      }
      // <--- ParallelGateway sid-D5B78B78_6ADD_4433_B7BF_43BD77338DC3: join --->
      if (_tokenState & 458752 == 458752) {
        // join: 2 incoming
        _tokenState &= ~uint(458752);
        _tokenState |= 524288;
        continue;
      }
      // <--- ParallelGateway sid-49433071_9A98_4150_BCC9_19A518103FFC: split --->
      if (_tokenState & 524288 == 524288) {
        // parallel split: two outgoing
        _tokenState &= ~uint(524288);
        _tokenState |= 4194304+1048576;
        continue;
      }
      // <--- sid-0133DF4D_71C7_454B_BD30_EDC3326B6BF1 Sends_notification_first_batch --->
      if (_tokenState & 1048576 == 1048576) {
        if (10 == id && msg.sender == participants[18]) {
        // <--- custom code for task 10 Sends_notification_first_batch --->
        _tokenState &= ~uint(1048576);
        _tokenState |= 16777216;
        id = 0;
        continue;
        }
      }
      // <--- sid-0B7409CA_9C11_41B3_9C5F_AF9E4E6F4E4D Sends_shipment --->
      if (_tokenState & 4194304 == 4194304) {
        if (11 == id && msg.sender == participants[20]) {
        // <--- custom code for task 11 Sends_shipment --->
        _tokenState &= ~uint(4194304);
        _tokenState |= 268435456;
        id = 0;
        continue;
        }
      }
      // <--- ParallelGateway sid-59FD9696_33BA_4281_B983_16C678D60C29: join --->
      if (_tokenState & 285212672 == 285212672) {
        // join: 2 incoming
        _tokenState &= ~uint(285212672);
        _tokenState |= 536870912;
        continue;
      }
      // <--- sid-907F86B4_E43C_42A4_84E6_42AF0A436CC0 Notification_for_the_first_batch_of_CPU_shipment --->
      if (_tokenState & 536870912 == 536870912) {
        if (12 == id && msg.sender == participants[22]) {
        // <--- custom code for task 12 Notification_for_the_first_batch_of_CPU_shipment --->
        _tokenState &= ~uint(536870912);
        _tokenState |= 1073741824;
        id = 0;
        continue;
        }
      }
      // <--- sid-36AEC271_211C_45AF_98E7_A36DCC243FE2 Sends_shipment --->
      if (_tokenState & 1073741824 == 1073741824) {
        if (13 == id && msg.sender == participants[24]) {
        // <--- custom code for task 13 Sends_shipment --->
        _tokenState &= ~uint(1073741824);
        _tokenState |= 2147483648;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-6F6BBE1D_EDBA_459B_9FF8_096332A86F9D --->
      if (_tokenState & 2147483648 == 2147483648) {
        bool didTransition = false;
        if (conditions & 1 == 1) {
          // <--- auto to end (sid-316DAD18_1E0C_4B6F_BC52_697AAD07C531) --->
          _tokenState &= ~uint(2147483648);
          _tokenState |= 0;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-05B03332_15F8_4230_9323_5EB426F59D83
          _tokenState &= ~uint(2147483648);
          _tokenState |= 4294967296;
        }
        if (didTransition) continue;
      }
      // <--- sid-05B03332_15F8_4230_9323_5EB426F59D83 Makes_reclamation --->
      if (_tokenState & 4294967296 == 4294967296) {
        if (14 == id && msg.sender == participants[26]) {
        // <--- custom code for task 14 Makes_reclamation --->
        _tokenState &= ~uint(4294967296);
        _tokenState |= 8589934592;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-F5E250E9_8224_4C08_96CC_5B213FE8E878 --->
      if (_tokenState & 8589934592 == 8589934592) {
        bool didTransition = false;
        if (conditions & 2 == 2) {
          // <--- to sid-8224411A_EC96_46EA_9628_AC493844BADA --->
          _tokenState &= ~uint(8589934592);
          _tokenState |= 34359738368;
          didTransition = true;
        }
        if (!didTransition) {
          // default: sid-76B84570_72AA_46A3_B8CC_E05210FBA769
          _tokenState &= ~uint(8589934592);
          _tokenState |= 17179869184;
        }
        if (didTransition) continue;
      }
      // <--- sid-76B84570_72AA_46A3_B8CC_E05210FBA769 Announces_problems_with_the_materials --->
      if (_tokenState & 17179869184 == 17179869184) {
        if (15 == id && msg.sender == participants[28]) {
        // <--- custom code for task 15 Announces_problems_with_the_materials --->
        _tokenState &= ~uint(17179869184);
        _tokenState |= 68719476736;
        id = 0;
        continue;
        }
      }
      // <--- sid-8224411A_EC96_46EA_9628_AC493844BADA Announces_problems_with_the_CPUs --->
      if (_tokenState & 34359738368 == 34359738368) {
        if (16 == id && msg.sender == participants[30]) {
        // <--- custom code for task 16 Announces_problems_with_the_CPUs --->
        _tokenState &= ~uint(34359738368);
        _tokenState |= 137438953472;
        id = 0;
        continue;
        }
      }
      // <--- sid-AA70870B_9C86_4611_881F_538762AEDBBF Sends_reclamation --->
      if (_tokenState & 68719476736 == 68719476736) {
        if (17 == id && msg.sender == participants[32]) {
        // <--- custom code for task 17 Sends_reclamation --->
        _tokenState &= ~uint(68719476736);
        _tokenState |= 274877906944;
        id = 0;
        continue;
        }
      }
      // <--- sid-0B70B2DC_A7C5_471A_AE6C_7AA0F4D2B20B Sends_the_result_from_the_parts_check --->
      if (_tokenState & 274877906944 == 274877906944) {
        if (18 == id && msg.sender == participants[34]) {
        // <--- custom code for task 18 Sends_the_result_from_the_parts_check --->
        _tokenState &= ~uint(274877906944);
        _tokenState |= 549755813888;
        id = 0;
        continue;
        }
      }
      // <--- ExclusiveGateway sid-7D650B82_5367_4CA4_B00C_EECE35C1BEDD: join --->
      if (_tokenState & 687194767232 == 687194767232) {
        // join: 2 incoming
        _tokenState &= ~uint(687194767232);
        _tokenState |= 1099511627776;
        continue;
      }
      // <--- sid-61585682_6A88_4404_A770_8142C2B15ACC Sends_the_results_from_the_diagnostics --->
      if (_tokenState & 1099511627776 == 1099511627776) {
        if (19 == id && msg.sender == participants[36]) {
        // <--- custom code for task 19 Sends_the_results_from_the_diagnostics --->
        _tokenState &= ~uint(1099511627776);
        _tokenState |= 0;
        break;
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}