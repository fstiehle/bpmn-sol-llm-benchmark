// test openai/gpt-4.1 - one-shot at 2025-06-11T23:31:42.746Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract openai_gpt_4_1_one_shot_sid_2c591827_8b1a_44df_9b65_7e81f4726aca {
  // Bitmasks:
  // 1: start (sid-DB7F14D8-A6C4-4570-8094-F2F4E5041424) and ChoreographyTask sid-1ED0DF23-B541-4FA6-8580-D03802881F5C
  // 2: ChoreographyTask sid-08335AEB-B1BF-426B-99AB-8C8530EEF0FB
  // 4: ChoreographyTask sid-EEFBB567-306F-49EC-8788-5EB90B7063D7
  // 8: ExclusiveGateway sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E
  // 16: EventBasedGateway sid-728D1640_42A6_4207_AABA_59C4E09E64FB
  // 32: ChoreographyTask sid-F3EC0F07-56AB-43B6-8395-E9067794DC02
  // 64: ChoreographyTask sid-879015FA-6568-4923-9101-3F50983FBBBE
  // 128: ExclusiveGateway sid-05C0E28A_923E_47F1_82E3_1CB04BD358E6
  // 256: ChoreographyTask sid-4876DF19-BE6D-402C-864F-A93BA7F6B786
  // 512: end (sid-21AD9573-0FB3-4125-A516-9D5D4A4A09A2)
  // 1024: (not used, reserved)
  // 2048: (not used, reserved)
  // Participants[13]:
  // 0: sid-FAC6782A_B693_4D00_BC5A_7E81C734CBD0 (Author)
  // 1: sid-96BD83AD_8ABA_4FE1_9232_DBFB620AD43A (Editor)
  // 2: sid-22CBDBF9_4AE0_4D72_9BD8_D555C2DDBA6F (Editor)
  // 3: sid-EC2FAABA_6C69_4D2F_BD57_79C33B523594 (Publisher)
  // 4: sid-47D1A311_6153_4029_9E0C_DBFFE359C4E3 (Publisher)
  // 5: sid-18CE2F30_8979_4353_B18E_15E3D89D7B4F (Author)
  // 6: sid-5BC99656_8545_48AA_8F23_CC0AF6491504 (Author)
  // 7: sid-7C44DA5A_F451_4A7A_BF66_DD31AD2AD491 (Publisher)
  // 8: sid-02D0D044_BB60_440F_BB01_28C81837F414 (Publisher)
  // 9: sid-1F7BC6C3_4EC0_49A0_BF95_2F38A8DE12AE (Editor)
  //10: sid-798D06FB_58C2_4B17_9C26_E5AE6EE91D2E (Editor)
  //11: sid-AD609CB1_E107_441D_AD1A_F77BA3CE3C32 (Publisher)
  //12: sid-158CC651_31BA_4458_B7C8_FD576A59A50E (Author)

  uint public tokenState = 1;
  uint public conditions;
  address[13] public participants;

  constructor(address[13] memory _participants) {
    participants = _participants;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  // taskID mapping:
  // 1: sid_1ED0DF23_B541_4FA6_8580_D03802881F5C (First contact) - Author (0)
  // 2: sid_08335AEB_B1BF_426B_99AB_8C8530EEF0FB (Inform Publisher) - Editor (2)
  // 3: sid_EEFBB567_306F_49EC_8788_5EB90B7063D7 (Instructions for publication) - Publisher (4)
  // 4: sid_F3EC0F07_56AB_43B6_8395_E9067794DC02 (drafts) - Author (6)
  // 5: sid_879015FA_6568_4923_9101_3F50983FBBBE (Request for publishing) - Publisher (8)
  // 6: sid_4876DF19_BE6D_402C_864F_A93BA7F6B786 (cancel publishing) - Editor (10)

  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      // ChoreographyTask: sid-1ED0DF23-B541-4FA6-8580-D03802881F5C (First contact)
      if (_tokenState & 1 == 1) {
        if (id == 1 && msg.sender == participants[0]) {
          // <--- First contact --->
          _tokenState &= ~uint(1);
          _tokenState |= 2; // Enable Inform Publisher
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: sid-08335AEB-B1BF-426B-99AB-8C8530EEF0FB (Inform Publisher)
      if (_tokenState & 2 == 2) {
        if (id == 2 && msg.sender == participants[2]) {
          // <--- Inform Publisher --->
          _tokenState &= ~uint(2);
          _tokenState |= 4; // Enable Instructions for publication
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: sid-EEFBB567-306F-49EC-8788-5EB90B7063D7 (Instructions for publication)
      if (_tokenState & 4 == 4) {
        if (id == 3 && msg.sender == participants[4]) {
          // <--- Instructions for publication --->
          _tokenState &= ~uint(4);
          _tokenState |= 8; // Enable ExclusiveGateway sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-8967CB45-5A2A-4CE6-9ABB-E8617248BF3E
      if (_tokenState & 8 == 8) {
        // two incoming: from Instructions for publication and from sequenceFlow sid-37BBF21C-65A8-4153-B73E-F902972168DA (after sid-05C0E28A)
        // outgoing: to EventBasedGateway sid-728D1640_42A6_4207_AABA_59C4E09E64FB (sid-454B2B50-73FE-4924-B0E6-134348F9F229)
        _tokenState &= ~uint(8);
        _tokenState |= 16; // Enable EventBasedGateway sid-728D1640_42A6_4207_AABA_59C4E09E64FB
        continue;
      }
      // EventBasedGateway: sid-728D1640-42A6-4207-AABA-59C4E09E64FB
      if (_tokenState & 16 == 16) {
        // Two outgoing: to drafts (sid-F3EC0F07-56AB-43B6-8395-E9067794DC02), and to cancel publishing (sid-4876DF19-BE6D-402C-864F-A93BA7F6B786)
        // This is an event-based gateway, i.e., the next task to be enacted is either drafts or cancel publishing
        // So, allow either (as soon as the right participant calls enact with the correct id)
        // Enable both possible paths (both bits at once)
        // Only one will be taken by the next valid enact call
        _tokenState &= ~uint(16);
        _tokenState |= 32 | 256; // drafts OR cancel publishing
        continue;
      }
      // ChoreographyTask: sid-F3EC0F07-56AB-43B6-8395-E9067794DC02 (drafts)
      if (_tokenState & 32 == 32) {
        if (id == 4 && msg.sender == participants[6]) {
          // <--- drafts --->
          _tokenState &= ~uint(32);
          _tokenState |= 64; // Enable Request for publishing
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: sid-4876DF19-BE6D-402C-864F-A93BA7F6B786 (cancel publishing)
      if (_tokenState & 256 == 256) {
        if (id == 6 && msg.sender == participants[10]) {
          // <--- cancel publishing --->
          _tokenState &= ~uint(256);
          // -> end
          _tokenState |= 512;
          id = 0;
          continue;
        }
      }
      // ChoreographyTask: sid-879015FA-6568-4923-9101-3F50983FBBBE (Request for publishing)
      if (_tokenState & 64 == 64) {
        if (id == 5 && msg.sender == participants[8]) {
          // <--- Request for publishing --->
          _tokenState &= ~uint(64);
          _tokenState |= 128; // Enable ExclusiveGateway sid-05C0E28A_923E_47F1_82E3_1CB04BD358E6
          id = 0;
          continue;
        }
      }
      // ExclusiveGateway: sid-05C0E28A-923E-47F1-82E3-1CB04BD358E6
      if (_tokenState & 128 == 128) {
        // Two outgoing: sid-380B1E83-807A-4A6B-ABA7-0F9ADA51E3D0 (default to end), sid-37BBF21C-65A8-4153-B73E-F902972168DA (conditions & 1 == 1)
        // Only one can be taken (exclusive)
        if (conditions & 1 == 1) {
          // sid-37BBF21C-65A8-4153-B73E-F902972168DA: to sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E
          _tokenState &= ~uint(128);
          _tokenState |= 8; // Enable ExclusiveGateway sid-8967CB45_5A2A_4CE6_9ABB_E8617248BF3E
          continue;
        } else {
          // Default: sid-380B1E83-807A-4A6B-ABA7-0F9ADA51E3D0: to end
          _tokenState &= ~uint(128);
          _tokenState |= 512;
          continue;
        }
      }
      // end event: sid-21AD9573-0FB3-4125-A516-9D5D4A4A09A2
      if (_tokenState & 512 == 512) {
        // Process terminates
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
