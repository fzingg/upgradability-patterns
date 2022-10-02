
import "./BallotLib.sol";

contract Ballot {
    using ballotLib for address;
    address eternalStorage;

    constructor(address _eternalStorage) {
        eternalStorage = _eternalStorage;
    }

    function getNumberOfVotes() public view returns(uint) {
        return eternalStorage.getNumberOfVotes();
    }

    function vote() public {
        eternalStorage.setVoteCount(eternalStorage.getNumberOfVotes() + 1);
    }
}