//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract comp_sid_9db7ba6e_45db_4b20_9a26_87596f72f2af {
  uint public tokenState = 1;
  address[8] public participants;
  uint public conditions;

  constructor(address[8] memory _participants) {
    participants = _participants;
  }
  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint id) external {
    uint _tokenState = tokenState;

    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- sid-A19CE1A5-B109-48AC-91B5-D068C96DD84C lodge cancellation request --->
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- sid-EFBA5F44-4987-41D9-8774-26F9DF28A974 notify cancellation --->
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 0;
        break; // is end
        }
      }
      if (_tokenState & 2 == 2) {
        if (conditions & 1 == 1) {
          // <---  auto transition  --->
          _tokenState &= ~uint(2);
          _tokenState |= 4;
          continue; 
        }
        else {
          // <--- sid-93377547-AA5F-4B50-AD6A-B7329051D7AA notify penalty --->
          if (3 == id && msg.sender == participants[4]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(2);
          _tokenState |= 8;
          id = 0;
          continue; 
          }
        }
      }
      if (_tokenState & 8 == 8) {
        if (conditions & 2 == 2) {
          // <--- sid-DA2E7957-7657-496F-9F71-05B305AB27BD reject cancellation --->
          if (4 == id && msg.sender == participants[6]) {
          // <--- custom code for task here --->
          _tokenState &= ~uint(8);
          _tokenState |= 0;
          break; // is end
          }
        }
        else {
          // <---  auto transition  --->
          _tokenState &= ~uint(8);
          _tokenState |= 4;
          continue; 
        }
      }
      break;
    }

    tokenState = _tokenState;
  }

}