pragma solidity 0.5.1;

contract MyContract {
    uint256 public peopleCount = 0;
    mapping(uint => Person) public people;
    
    address owner;
    
    // create own modifier
    modifier onlyOwner() {
        // msg.sender : the person who execute this contract
        // require : throw an error if the condition is false
        require(msg.sender == owner);
        _; // this will call the function owned by this modifier here
    }
    
    uint256 openingTime = 1607291030; // Epoch timestamp
    
    modifier onlyWhileOpen() {
        // block.timestamp : access time of the block in Epoch Unix Timestamp
        require(block.timestamp >= openingTime);
        _;
    }
    
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }
    
    constructor() public {
        owner = msg.sender;
    }
    
    // onlyOwner modifier : onlyOwner can call this function
    function addPerson(
        string memory _firstName,
        string memory _lastName)
        public onlyOwner
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
    
    function incrementCount() internal {
        peopleCount += 1;
    }
    
    // different modifier by time
    function addPersonTime(
        string memory _firstName,
        string memory _lastName)
        public onlyWhileOpen
    {
        incrementCount();
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);
    }
}

