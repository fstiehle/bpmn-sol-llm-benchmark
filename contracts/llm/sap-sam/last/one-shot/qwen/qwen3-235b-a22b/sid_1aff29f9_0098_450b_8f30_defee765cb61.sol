// test qwen/qwen3-235b-a22b - one-shot at 2025-06-12T18:01:51.930Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract qwen_qwen3_235b_a22b_one_shot_sid_1aff29f9_0098_450b_8f30_defee765cb61 {
  uint public tokenState = 1;
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
    while(_tokenState != 0) {
      // Check if the current state is "Kunde füllt Formular aus" (Task 4)
      if (_tokenState & 1 == 1) {
        // <--- Task: sid-08E44EEC-F5A2-4529-9B95-DAA0B1553E3B Kunde füllt Formular aus --->
        if (4 == id && msg.sender == participants[6]) {
          _tokenState &= ~uint(1); // Clear current state bit
          _tokenState |= 2; // Set next state bit for task 1
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Ticket erstellen" (Task 1)
      if (_tokenState & 2 == 2) {
        // <--- Task: sid-71EECEC0-BED7-4D5B-A3B9-F5E0A08A1B91 Ticket erstellen --->
        if (1 == id && msg.sender == participants[0]) {
          _tokenState &= ~uint(2); // Clear current state bit
          _tokenState |= 4; // Set next state bit for task 10
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Meldet sich an" (Task 10)
      if (_tokenState & 4 == 4) {
        // <--- Task: sid-04736748-3A55-4172-8EC2-70379C6D6C1C Meldet sich an --->
        if (10 == id && msg.sender == participants[18]) {
          _tokenState &= ~uint(4); // Clear current state bit
          _tokenState |= 8; // Set next state bit for task 2
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Ticket auswählen" (Task 2)
      if (_tokenState & 8 == 8) {
        // <--- Task: sid-C3423358-0834-46F4-9BEF-2312F3F5670B Ticket auswählen --->
        if (2 == id && msg.sender == participants[2]) {
          _tokenState &= ~uint(8); // Clear current state bit
          _tokenState |= 16; // Set next state bit for exclusive gateway
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is at the exclusive gateway
      if (_tokenState & 16 == 16) {
        // Handle conditions for exclusive gateway
        if (conditions & 1 == 1) {
          // Condition met, go to end event
          _tokenState &= ~uint(16); // Clear current state bit
          _tokenState |= 2048; // Set next state bit for end event
          continue;
        } else {
          // Default path, go to "Ticket bearbeiten"
          _tokenState &= ~uint(16); // Clear current state bit
          _tokenState |= 32; // Set next state bit for task 3
          continue;
        }
      }
      
      // Check if the current state is "Ticket bearbeiten" (Task 3)
      if (_tokenState & 32 == 32) {
        // <--- Task: sid-640C6210-0293-4116-9743-EE1E3CECEBC1 Ticket bearbeiten --->
        if (3 == id && msg.sender == participants[4]) {
          _tokenState &= ~uint(32); // Clear current state bit
          _tokenState |= 64; // Set next state bit for task 5
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Status verändern" (Task 5)
      if (_tokenState & 64 == 64) {
        // <--- Task: sid-4A7608DF-1B16-49D8-8329-8CE3A53FEB93 Status verändern --->
        if (5 == id && msg.sender == participants[8]) {
          _tokenState &= ~uint(64); // Clear current state bit
          _tokenState |= 128; // Set next state bit for task 6
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Ticket abschließen" (Task 6)
      if (_tokenState & 128 == 128) {
        // <--- Task: sid-C1BA5A74-1714-45AF-B4E3-8A6DA558B477 Ticket abschließen --->
        if (6 == id && msg.sender == participants[10]) {
          _tokenState &= ~uint(128); // Clear current state bit
          _tokenState |= 256; // Set next state bit for task 7
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Ticket abspeichern" (Task 7)
      if (_tokenState & 256 == 256) {
        // <--- Task: sid-B568F431-74F6-46AC-932A-58E90EB96830 Ticket abspeichern --->
        if (7 == id && msg.sender == participants[12]) {
          _tokenState &= ~uint(256); // Clear current state bit
          _tokenState |= 512; // Set next state bit for task 8
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Rückmeldung zu Bearbeitung geben" (Task 8)
      if (_tokenState & 512 == 512) {
        // <--- Task: sid-0E65D5AE-A506-4126-AD69-2C5AF174C9BE Rückmeldung zu Bearbeitung geben --->
        if (8 == id && msg.sender == participants[14]) {
          _tokenState &= ~uint(512); // Clear current state bit
          _tokenState |= 1024; // Set next state bit for task 9
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is "Rückmeldung einsehen" (Task 9)
      if (_tokenState & 1024 == 1024) {
        // <--- Task: sid-B42BA3E1-4936-4177-9785-0CBF5888F7DB Rückmeldung einsehen --->
        if (9 == id && msg.sender == participants[16]) {
          _tokenState &= ~uint(1024); // Clear current state bit
          _tokenState |= 2048; // Set next state bit for end event
          id = 0; // Reset task ID
          continue;
        }
      }
      
      // Check if the current state is at the end event
      if (_tokenState & 2048 == 2048) {
        // End of process, no more tasks to execute
        _tokenState &= ~uint(2048); // Clear end state bit
        break;
      }
      
      // If we reach this point, no valid task could be executed
      break;
    }
    
    tokenState = _tokenState;
  }
}
