pragma solidity ^0.4.21;

import "github.com/OpenZeppelin/zeppelin-solidity/contracts/ownership/Ownable.sol";
import "github.com/OpenZeppelin/zeppelin-solidity/contracts/ownership/rbac/RBACWithAdmin.sol";

contract Item is Ownable, RBACWithAdmin {
    Field[] fields;
    string fileHash;

    struct Field {
        string name;
        string value;
    }

    function Item(string _fileHash) public {
        require(bytes(_fileHash).length > 0);

        fileHash = _fileHash;
    }

    function addField(string _name, string _value) onlyAdmin public {
        Field memory field = Field(_name, _value);
        fields.push(field);
    }

    function editField(string _name, string _value) onlyAdmin public {
        uint key = findFieldKeyByName(_name);

        Field memory field = Field(_name, _value);
        fields[key] = field;
    }

    function getFieldCount() public view returns (uint)
    {
        return fields.length;
    }

    function getFieldName(uint8 _key) public view returns (string) {
        return fields[_key].name;
    }

    function getFieldValue(uint8 _key) public view returns (string) {
        return fields[_key].value;
    }

    function findFieldKeyByName(string _name) public view returns (uint) {
        uint id;
        bool found = false;
        uint i = 0;

        while (!found && i < fields.length) {
            if (keccak256(fields[i].name) == keccak256(_name)) {
                id = i;
                found = true;
            }

            i++;
        }

        return id;
    }

    function findFieldValueByName(string _name) public view returns (string) {
        uint id = findFieldKeyByName(_name);

        return fields[id].value;
    }

    function getFileHash() public view returns (string) {
        return fileHash;
    }
}
