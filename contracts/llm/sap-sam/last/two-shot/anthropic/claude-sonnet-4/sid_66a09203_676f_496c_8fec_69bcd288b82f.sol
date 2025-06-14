// test anthropic/claude-sonnet-4 - two-shot at 2025-06-12T06:14:57.213Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract anthropic_claude_sonnet_4_two_shot_sid_66a09203_676f_496c_8fec_69bcd288b82f {
  uint public tokenState = 1;
  address[15] public participants;
  uint public conditions;
  constructor(address[15] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }
  function enact(uint id) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-56125FD7-FBEE-47E9-B12C-9F21ECF50FBE teilt Wuensche/Rahmenbedingung mit --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- sid-F6CE5331-CAB4-4FAC-BDD7-3B99BC13EECE praesentiert moegliches Objekt --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- sid-56CC82ED-03D3-4C04-8596-36F6EC5AF83A entscheidet sich fuer Objekt --->
        if (3 == id && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 48;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- sid-627ACE73-E5A5-4C21-A82F-E4F6B855E698 Finanzierung klaeren --->
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 32 == 32) {
        // <--- sid-898706F7-D8B6-4499-9CC2-35153078234D bereitet Vertrag vor --->
        if (5 == id && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(32);
        _tokenState |= 128;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 256 == 256) {
        // <--- sid-218F35A0-BB4F-434A-A456-79ED84327F62 Vertrag unterzeichnen --->
        if (6 == id && msg.sender == participants[11]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(256);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 4 == 4) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue; 
        } else {
          // <---  auto transition  --->
          _tokenState &= ~uint(4);
          _tokenState |= 0;
          break; // is end
        }
      }
      if (_tokenState & 192 == 192) {
        // <---  auto transition  --->
        _tokenState &= ~uint(192);
        _tokenState |= 256;
        continue; 
      }
      break;
    }
    tokenState = _tokenState;
  }
}
