pragma solidity ^0.8.0;

contract LLM_PizzaDelivery {
    enum Task {
        Start,
        OrderPizza,
        ConfirmETA,
        AnnounceDelivery,
        DeliverPizza,
        End
    }

    address[3] public participants;
    uint public tokenState;
    uint public conditions;

    mapping(Task => uint) private taskIDMap;

    constructor(address[3] memory _participants) {
        participants = _participants;
        taskIDMap[Task.OrderPizza] = 1;
        taskIDMap[Task.ConfirmETA] = 2;
        taskIDMap[Task.AnnounceDelivery] = 3;
        taskIDMap[Task.DeliverPizza] = 4;
        tokenState = uint(Task.Start);
    }

    function setconditions(uint _conditions) public {
        conditions = _conditions;
    }

    function enact(uint taskID) public {
        require(
            msg.sender == participants[getParticipantIndex(tokenState)],
            "Only the correct participant can enact this task."
        );

        if (tokenState == uint(Task.Start)) {
            require(taskID == taskIDMap[Task.OrderPizza], "Invalid task for current state.");
            tokenState = uint(Task.OrderPizza);
        } else if (tokenState == uint(Task.OrderPizza)) {
            require(taskID == taskIDMap[Task.ConfirmETA] || taskID == taskIDMap[Task.DeliverPizza], "Invalid task for current state.");

            if (taskID == taskIDMap[Task.ConfirmETA]) {
                require((conditions & 1) == 1, "Condition not met for Confirm ETA.");
                tokenState = uint(Task.ConfirmETA);
            } else if (taskID == taskIDMap[Task.DeliverPizza]) {
                require((conditions & 1) == 0, "Condition not met for Deliver Pizza.");
                tokenState = uint(Task.DeliverPizza);
            }
        } else if (tokenState == uint(Task.ConfirmETA)) {
            require(taskID == taskIDMap[Task.AnnounceDelivery], "Invalid task for current state.");
            tokenState = uint(Task.AnnounceDelivery);
        } else if (tokenState == uint(Task.AnnounceDelivery)) {
            require(taskID == taskIDMap[Task.DeliverPizza], "Invalid task for current state.");
            tokenState = uint(Task.DeliverPizza);
        } else if (tokenState == uint(Task.DeliverPizza)) {
            require(taskID == taskIDMap[Task.End], "Invalid task for current state.");
            tokenState = uint(Task.End);
        } else if (tokenState == uint(Task.End)) {
            revert("Process already completed.");
        } else {
            revert("Unknown state.");
        }
    }

    function getParticipantIndex(uint state) private pure returns (uint) {
        if (state == uint(Task.OrderPizza) || state == uint(Task.ConfirmETA) || state == uint(Task.AnnounceDelivery)) {
            return 0; // Customer
        } else if (state == uint(Task.DeliverPizza)) {
            return 2; // Delivery Boy
        } else if (state == uint(Task.Start) || state == uint(Task.End)) {
            return 0; // Customer
        } else {
            return 1; // Pizza Place
        }
    }
}