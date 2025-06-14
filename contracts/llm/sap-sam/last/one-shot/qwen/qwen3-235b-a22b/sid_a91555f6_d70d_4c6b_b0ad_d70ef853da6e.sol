// test qwen/qwen3-235b-a22b - one-shot at 2025-06-13T18:59:38.299Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract qwen_qwen3_235b_a22b_one_shot_sid_a91555f6_d70d_4c6b_b0ad_d70ef853da6e {
  uint public tokenState = 1;
  address[36] public participants;
  uint public conditions;
  
  constructor(address[36] memory _participants) {
    participants = _participants;
  }
  
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    
    while (_tokenState != 0) {
      uint nextTokenState = _tokenState;
      bool taskExecuted = false;
      
      // Task 1: Auftrag einleiten
      if ((_tokenState & 1) == 1 && taskID == 1) {
        require(msg.sender == participants[0], "Only participant 0 can execute task 1");
        nextTokenState &= ~uint(1);
        nextTokenState |= 2;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 2: Auftragsbestätigung senden
      else if ((_tokenState & 2) == 2 && taskID == 2) {
        require(msg.sender == participants[2], "Only participant 2 can execute task 2");
        nextTokenState &= ~uint(2);
        nextTokenState |= 4;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 3: Auftragsstornierung senden
      else if ((_tokenState & 4) == 4 && taskID == 3) {
        require(msg.sender == participants[4], "Only participant 4 can execute task 3");
        nextTokenState &= ~uint(4);
        nextTokenState |= 8;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 2856C72E-CF6C-470D-81AE-3DCA9E40482E
      else if ((_tokenState & 8) == 8) {
        bool conditionMet = false;
        if ((conditions & 1) == 1) {
          nextTokenState &= ~uint(8);
          nextTokenState |= 0x10;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(8);
          nextTokenState |= 0x10;
        }
      }
      
      // Task 4: Forschungen einleiten
      else if ((_tokenState & 0x10) == 0x10 && taskID == 4) {
        require(msg.sender == participants[6], "Only participant 6 can execute task 4");
        nextTokenState &= ~uint(0x10);
        nextTokenState |= 0x20;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 7C3C0919-B7D2-4893-9A79-122FF408E54B
      else if ((_tokenState & 0x20) == 0x20) {
        bool conditionMet = false;
        if ((conditions & 2) == 2) {
          nextTokenState &= ~uint(0x20);
          nextTokenState |= 0x40;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(0x20);
          nextTokenState |= 0x40;
        }
      }
      
      // Task 5: Herstellungsprozess einleiten
      else if ((_tokenState & 0x40) == 0x40 && taskID == 5) {
        require(msg.sender == participants[8], "Only participant 8 can execute task 5");
        nextTokenState &= ~uint(0x40);
        nextTokenState |= 0x80;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 69BEE4E4-AB00-41AF-AF6C-9F4045F94E56
      else if ((_tokenState & 0x80) == 0x80) {
        bool conditionMet = false;
        if ((conditions & 8) == 8) {
          nextTokenState &= ~uint(0x80);
          nextTokenState |= 0x100;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(0x80);
          nextTokenState |= 0x100;
        }
      }
      
      // Task 6: Auftrag und Kapazitäten überprüfen
      else if ((_tokenState & 0x100) == 0x100 && taskID == 6) {
        require(msg.sender == participants[10], "Only participant 10 can execute task 6");
        nextTokenState &= ~uint(0x100);
        nextTokenState |= 0x200;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 8B1BAB42-BA01-48FE-A5A8-D45CEFB25103
      else if ((_tokenState & 0x200) == 0x200) {
        nextTokenState &= ~uint(0x200);
        nextTokenState |= 0x400;
      }
      
      // Gateway 35217493-4799-4124-BD24-4F9402FE5268
      else if ((_tokenState & 0x400) == 0x400) {
        nextTokenState &= ~uint(0x400);
        nextTokenState |= 0x800;
      }
      
      // Task 7: Rechtliche Aspekte überprüfen
      else if ((_tokenState & 0x800) == 0x800 && taskID == 7) {
        require(msg.sender == participants[12], "Only participant 12 can execute task 7");
        nextTokenState &= ~uint(0x800);
        nextTokenState |= 0x1000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 8: Qualitätskontrolle durchführen
      else if ((_tokenState & 0x1000) == 0x1000 && taskID == 8) {
        require(msg.sender == participants[14], "Only participant 14 can execute task 8");
        nextTokenState &= ~uint(0x1000);
        nextTokenState |= 0x2000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 9: Ursachen analysieren
      else if ((_tokenState & 0x2000) == 0x2000 && taskID == 9) {
        require(msg.sender == participants[16], "Only participant 16 can execute task 9");
        nextTokenState &= ~uint(0x2000);
        nextTokenState |= 0x4000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway F00E71CC-D4FF-4FB3-9D47-0FC6ED349AAA
      else if ((_tokenState & 0x4000) == 0x4000) {
        nextTokenState &= ~uint(0x4000);
        nextTokenState |= 0x8000;
      }
      
      // Gateway B216E792-FFDE-4AEC-AF35-317D250205B0
      else if ((_tokenState & 0x8000) == 0x8000) {
        bool conditionMet = false;
        if ((conditions & 8) == 8) {
          nextTokenState &= ~uint(0x8000);
          nextTokenState |= 0x10000;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(0x8000);
          nextTokenState |= 0x10000;
        }
      }
      
      // Task 10: Probe ausliefern
      else if ((_tokenState & 0x10000) == 0x10000 && taskID == 10) {
        require(msg.sender == participants[18], "Only participant 18 can execute task 10");
        nextTokenState &= ~uint(0x10000);
        nextTokenState |= 0x20000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 11: Qualitätskontrolle durchführen
      else if ((_tokenState & 0x20000) == 0x20000 && taskID == 11) {
        require(msg.sender == participants[20], "Only participant 20 can execute task 11");
        nextTokenState &= ~uint(0x20000);
        nextTokenState |= 0x40000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 22214891-5F47-4B8B-ADDC-06E82BD4FCA1
      else if ((_tokenState & 0x40000) == 0x40000) {
        bool conditionMet = false;
        if ((conditions & 16) == 16) {
          nextTokenState &= ~uint(0x40000);
          nextTokenState |= 0x80000;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(0x40000);
          nextTokenState |= 0x80000;
        }
      }
      
      // Task 12: Anzahl überprüfen
      else if ((_tokenState & 0x80000) == 0x80000 && taskID == 12) {
        require(msg.sender == participants[22], "Only participant 22 can execute task 12");
        nextTokenState &= ~uint(0x80000);
        nextTokenState |= 0x100000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Gateway 69509D2C-03B5-4175-8E2D-C5FE3C7C76FB
      else if ((_tokenState & 0x100000) == 0x100000) {
        bool conditionMet = false;
        if ((conditions & 32) == 32) {
          nextTokenState &= ~uint(0x100000);
          nextTokenState |= 0x200000;
          conditionMet = true;
        }
        if (!conditionMet) {
          nextTokenState &= ~uint(0x100000);
          nextTokenState |= 0x200000;
        }
      }
      
      // Task 13: Reklamation senden
      else if ((_tokenState & 0x200000) == 0x200000 && taskID == 13) {
        require(msg.sender == participants[24], "Only participant 24 can execute task 13");
        nextTokenState &= ~uint(0x200000);
        nextTokenState |= 0x400000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 14: Auftragsstornierung senden
      else if ((_tokenState & 0x400000) == 0x400000 && taskID == 14) {
        require(msg.sender == participants[26], "Only participant 26 can execute task 14");
        nextTokenState &= ~uint(0x400000);
        nextTokenState |= 0x800000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 15: Qualitätsbestätigung senden
      else if ((_tokenState & 0x800000) == 0x800000 && taskID == 15) {
        require(msg.sender == participants[28], "Only participant 28 can execute task 15");
        nextTokenState &= ~uint(0x800000);
        nextTokenState |= 0x1000000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 16: Biopharmazeutika ausliefern
      else if ((_tokenState & 0x1000000) == 0x1000000 && taskID == 16) {
        require(msg.sender == participants[30], "Only participant 30 can execute task 16");
        nextTokenState &= ~uint(0x1000000);
        nextTokenState |= 0x2000000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 17: Eingang bestätigen
      else if ((_tokenState & 0x2000000) == 0x2000000 && taskID == 17) {
        require(msg.sender == participants[32], "Only participant 32 can execute task 17");
        nextTokenState &= ~uint(0x2000000);
        nextTokenState |= 0x4000000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // Task 18: Rechnung erstellen
      else if ((_tokenState & 0x4000000) == 0x4000000 && taskID == 18) {
        require(msg.sender == participants[34], "Only participant 34 can execute task 18");
        nextTokenState &= ~uint(0x4000000);
        nextTokenState |= 0x8000000;
        taskID = 0;
        taskExecuted = true;
      }
      
      // End event: Auftrag beendet
      else if ((_tokenState & 0x8000000) == 0x8000000) {
        nextTokenState = 0;
      }
      
      if (!taskExecuted) {
        break;
      }
      
      _tokenState = nextTokenState;
    }
    
    tokenState = _tokenState;
  }
}
