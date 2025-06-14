// test openai/gpt-4.1 - two-shot at 2025-06-12T01:41:24.751Z
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
contract openai_gpt_4_1_two_shot_sid_8cf04aa5_ed38_43f8_a628_7e211cc2f882 {
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
      // sid-A981B3EA-FC92-4ABE-9906-A9AB18283EAC: przyjmij pacjenta (taskID 1, participant[0])
      if (_tokenState & 1 == 1) {
        if (1 == id && msg.sender == participants[0]) {
        // <--- custom code for task sid-A981B3EA-FC92-4ABE-9906-A9AB18283EAC here --->
        _tokenState &= ~uint(1);
        _tokenState |= 2;
        id = 0;
        continue;
        }
      }
      // sid-0A2B5205-D3C8-4D18-8617-B059BA9DF38D: zapisz pacjenta (taskID 2, participant[2])
      if (_tokenState & 2 == 2) {
        if (2 == id && msg.sender == participants[2]) {
        // <--- custom code for task sid-0A2B5205-D3C8-4D18-8617-B059BA9DF38D here --->
        _tokenState &= ~uint(2);
        _tokenState |= 4;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway sid-A448521E-0933-448B-A270-8EC27F0CC5B3 (bit 4)
      if (_tokenState & 4 == 4) {
        // There are two outgoing sequenceFlows:
        // sid-7FC618E9-E3FA-4208-9639-20E05D593FCB to sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA (taskID 3)
        // sid-546BF745-183E-42CD-A7C5-E6365B247939 to sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12 (taskID 4), with Solidity condition: conditions & 1 == 1
        // default is sid-7FC618E9-E3FA-4208-9639-20E05D593FCB (to sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA)
        bool matched = false;
        if (conditions & 1 == 1) {
          // sid-546BF745-183E-42CD-A7C5-E6365B247939: activate sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12 (taskID 4)
          _tokenState &= ~uint(4);
          _tokenState |= 16;
          matched = true;
          continue;
        }
        if (!matched) {
          // default: sid-7FC618E9-E3FA-4208-9639-20E05D593FCB: activate sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA (taskID 3)
          _tokenState &= ~uint(4);
          _tokenState |= 8;
          continue;
        }
      }
      // sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA: wyslanie organu (taskID 3, participant[5])
      if (_tokenState & 8 == 8) {
        if (3 == id && msg.sender == participants[5]) {
        // <--- custom code for task sid-1C994BCF-8067-4CF5-B9A1-1E5E1E24B8AA here --->
        _tokenState &= ~uint(8);
        _tokenState |= 32;
        id = 0;
        continue;
        }
      }
      // sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12: wyslanie odwolania (taskID 4, participant[6])
      if (_tokenState & 16 == 16) {
        if (4 == id && msg.sender == participants[6]) {
        // <--- custom code for task sid-44FA8648-8BD1-4ED3-BB90-1524147E2E12 here --->
        _tokenState &= ~uint(16);
        _tokenState |= 64;
        id = 0;
        continue;
        }
      }
      // ExclusiveGateway sid-1FEF189D-8FDA-48C4-B234-28C9600F06EF (bit 32 or 64)
      if (_tokenState & 32 == 32 || _tokenState & 64 == 64) {
        // Both 0D4CE818-BE21-47E5-9493-B10A8183C126 and 66D5DFC0-1855-4254-92F5-2433E368B8E4 flow to this gateway, which always leads to 4C0D587B-3933-488C-8F36-AF47C5308E04 (end).
        _tokenState &= ~uint(32);
        _tokenState &= ~uint(64);
        _tokenState |= 128;
        continue;
      }
      // End event: sid-56924977-50D0-4897-AB7B-0ECA05A328A4 (bit 128)
      if (_tokenState & 128 == 128) {
        _tokenState = 0;
        break;
      }
      break;
    }
    tokenState = _tokenState;
  }
}
