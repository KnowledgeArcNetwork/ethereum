var abi = [
{
    "constant": true,
    "inputs": [
    {
        "name": "_id",
        "type": "uint8"
    }
    ],
    "name": "getFieldValue",
    "outputs": [
    {
        "name": "",
        "type": "string"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "constant": true,
    "inputs": [],
    "name": "isEmbargoed",
    "outputs": [
    {
        "name": "",
        "type": "bool"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "constant": true,
    "inputs": [
    {
        "name": "_id",
        "type": "uint8"
    }
    ],
    "name": "getFieldName",
    "outputs": [
    {
        "name": "",
        "type": "string"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "constant": true,
    "inputs": [
    {
        "name": "_name",
        "type": "string"
    }
    ],
    "name": "findFieldValueByName",
    "outputs": [
    {
        "name": "",
        "type": "string"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "constant": true,
    "inputs": [],
    "name": "getFieldCount",
    "outputs": [
    {
        "name": "",
        "type": "uint256"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "constant": false,
    "inputs": [
    {
        "name": "_name",
        "type": "string"
    },
    {
        "name": "_value",
        "type": "string"
    }
    ],
    "name": "addField",
    "outputs": [],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "function"
},
{
    "constant": true,
    "inputs": [],
    "name": "getFileHash",
    "outputs": [
    {
        "name": "",
        "type": "string"
    }
    ],
    "payable": false,
    "stateMutability": "view",
    "type": "function"
},
{
    "inputs": [
    {
        "name": "_fileHash",
        "type": "string"
    },
    {
        "name": "_until",
        "type": "uint256"
    }
    ],
    "payable": false,
    "stateMutability": "nonpayable",
    "type": "constructor"
}
]
