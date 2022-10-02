library ballotLib {

    function getNumberOfVotes(address _eternalStorage) public view returns (uint256)  {
        return EternalStorage(_eternalStorage).getUIntValue(keccak256('votes'));
    }

    function setVoteCount(address _eternalStorage, uint _voteCount) public {
        EternalStorage(_eternalStorage).setUIntValue(keccak256('votes'), _voteCount);
    }
}