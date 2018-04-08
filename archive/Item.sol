pragma solidity ^0.4.21;

contract Item {
    Field[] fields;
    string fileHash;
    
    struct Field {
        string name;
        string value;
    }
    
    mapping (uint => Field) metadata;
    
    function Item(string _fileHash) public {
        fileHash = _fileHash;
    }
    
    function addField(string _name, string _value) public {
        Field memory field = Field(_name, _value);
        fields.push(field);
        metadata[fields.length -1] = field;
    }
    
    function getFieldCount() public view returns (uint)
    {
        return fields.length;
    }

    function getFieldName(uint8 _id) public view returns (string) {
        return fields[_id].name;
    }
    
    function getFieldValue(uint8 _id) public view returns (string) {
        return fields[_id].value;
    }
    
    function findFieldValueByName(string _name) public view returns (string) {
        string memory value;
        
        for (uint i = 0; i < fields.length; i++) {
            if (keccak256(fields[i].name) == keccak256(_name)) {
                value = fields[i].value;
            }
        }
        
        return value;
    }
    
    function getFileHash() public view returns (string) {
        return fileHash;
    }
}
