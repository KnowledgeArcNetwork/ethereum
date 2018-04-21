pragma solidity ^0.4.21;

import "./Item.sol";

contract EmbargoedItem is Item {
    uint until;

    function EmbargoedItem(string _fileHash, uint _until) Item(_fileHash) public {
        until = _until;
    }

    function isEmbargoed() public view returns (bool) {
        if (until < block.timestamp) {
            return false;
        }

        return true;
    }

    modifier embargoed() {
        require(isEmbargoed() == true);
        _;
    }

    function getFileHash() public view embargoed returns (string) {
        return super.getFileHash();
    }
}
