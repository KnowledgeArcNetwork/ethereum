# Ethereum

An implementation of an archive using the Ethereum network.

Ethereum provides an interesting first step in decentralizing archived information. It may ultimately be too expensive to archive millions, or even hundreds of thousands of items on Ethereum but with other blockchains such as HyperLedger leveraging Solidity as a contract programming language, it may be feasible to use Solidity as the archive's language of choice.

## Proof of Concept

The concept of his POC is simple; store a file hash (a pointer to a real file, possibly stored on a centralized file store such as Amazon's S3, or, better still, a decentralized system such as IPFS or Storj). Supporting this file will be one or more metadata fields. These metadata fields store various descriptive information about the archived file, such as location, title, author, editor, abstract, etc. The metadata may be a combination of human-readable and machine-readable information.

## Deploying the Contract

Firstly, this is a proof of concept. IT IS STRONGLY RECOMMENDED THESE CONTRACTS **NOT** BE RUN ON THE MAINNET. Only run these contracts on a testnet.

### Item.sol

The Item.sol forms the basis of the archive. It provides a method for storing a file hash and adding various metadata which describes the associated file.

If you deploy this contract (on a testnet) make a note of the contract address. You will need it later if you decide to use the contract viewer.

When first deploying the contract, you will need to specify a file hash. However, at this stage the hash is an arbitrary string, with no actual link to a file.

## Viewing the Contract

Currently, a hardcoded Item contract can be viewed on the Ropsten testnet. The index.html file can simply be opened in a web browser. It does not need to be deployed to a web server to run.

The current contract address is 0xabaf9d2955e0ce3e53d0fd964e761017d0a0a957. However, this may change soon so that any Item contract can be loaded.

If you wish to view your contract (the one you created in the Item.sol step above), you will need to edit the index.html file, changing the contractAddress to the one you have recorded when you deployed the Item.sol.