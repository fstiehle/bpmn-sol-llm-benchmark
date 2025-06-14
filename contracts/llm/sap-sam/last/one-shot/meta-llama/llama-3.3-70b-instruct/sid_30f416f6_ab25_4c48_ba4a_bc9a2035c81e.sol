// test meta-llama/llama-3.3-70b-instruct - one-shot at 2025-06-12T09:15:58.384Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract meta_llama_llama_3_3_70b_instruct_one_shot_sid_30f416f6_ab25_4c48_ba4a_bc9a2035c81e {
  uint public tokenState = 1;
  address[10] public participants;
  uint public conditions;
  mapping(string => uint) public taskIDMap;

  constructor(address[10] memory _participants) {
    participants = _participants;
    taskIDMap["sid-7B5BC122-0869-4F8D-9C8A-53BB9CDD2897"] = 1;
    taskIDMap["sid-D8B9D339-1F22-48E5-856A-C07C436E4B4B"] = 2;
    taskIDMap["sid-BB314A22-3938-40EC-9374-8B888186124E"] = 3;
    taskIDMap["sid-1FB7CCE0-5770-41EE-AB7F-1948F6A319F4"] = 4;
    taskIDMap["sid-6277474B-744C-42D4-A8DC-30790ECDF45F"] = 5;
  }

  function setConditions(uint _conditions) external {
    conditions = _conditions;
  }

  function enact(uint taskID) external {
    uint _tokenState = tokenState;
    while(_tokenState != 0) {
      if (_tokenState & 1 == 1) {
        // <--- ChoreographyTask sid-7B5BC122-0869-4F8D-9C8A-53BB9CDD2897 Uebergabe des zu verschickenden Pakets --->
        if (taskID == 1 && msg.sender == participants[0]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 2 == 2) {
        // <--- ChoreographyTask sid-D8B9D339-1F22-48E5-856A-C07C436E4B4B Einscannen bzw. Uebergabe der Paketinformationen --->
        if (taskID == 2 && msg.sender == participants[2]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 4 == 4) {
        // <--- ChoreographyTask sid-BB314A22-3938-40EC-9374-8B888186124E Informationen ueber die korrekte Versand-Einordnung --->
        if (taskID == 3 && msg.sender == participants[4]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(4);
        _tokenState |= 8;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 8 == 8) {
        // <--- ChoreographyTask sid-1FB7CCE0-5770-41EE-AB7F-1948F6A319F4 ueberprueft die Einordnung auf Plausibilitaet --->
        if (taskID == 4 && msg.sender == participants[6]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(8);
        _tokenState |= 16;
        taskID = 0;
        continue; 
        }
      }
      if (_tokenState & 16 == 16) {
        // <--- ChoreographyTask sid-6277474B-744C-42D4-A8DC-30790ECDF45F Paket wird dem Zusteller zugeordnet --->
        if (taskID == 5 && msg.sender == participants[8]) {
        // <--- custom code for task here --->
        _tokenState &= ~uint(16);
        _tokenState |= 0;
        break; // is end
        }
      }
      break;
    }
    tokenState = _tokenState;
  }
}
