pragma solidity 0.5.1;

contract MyContract {
    // =======================
    // ======== TYPES ========
    // =======================
    string public stringValue = "myString";
    bool public myBool = true;
    int public myInt = -1;
    uint public myUint = 1;
    uint8 public myUint8 = 10;
    uint256 public myUint256 = 888889949;
    
    // ========================
    // ========= ENUM =========
    // ========================
    enum State { Waiting, Ready, Active }
    State public state;
    
    constructor() public {
        state = State.Waiting;
    }
    
    function activate() public {
        state = State.Active;
    }
    
    function isActive() public view returns(bool) {
        return state == State.Active;
    }

    // ======================
    // ======= STRUCT =======
    // ======================
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    function addPerson(string memory _firstName, string memory _lastName) public {
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}