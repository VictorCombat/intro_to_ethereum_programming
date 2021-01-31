## Install web3 with npm

`npm install web3`

## Launch node environment

`node`

## Launch node with file

`node <filename>`

## Using Web3.js
```javascript
var Web3 = require('web3')
var web3 = new Web3('https://mainnet.infura.io/v3/0d7fb1d0a2134c51ae356fa62e39e75c')    // Address on the ethereum blockchain
```

#### Get ERC-20 Token address on etherscan.io (ex: [Compound](https://compound.finance))

https://etherscan.io/address/0xc00e94cb662c3520282e6f5717214004a7f26888

##### Get the contract ABI

```javascript
var abi = 'paste contract ABI'
var contractAddress = '0xc00e94cb662c3520282e6f5717214004a7f26888'                  // We need the contract address to talk to it
var contract = new web3.eth.Contract(abi, contractAddress)                          // Create an instance
contract.methods                                                                    // -> List all functions
contract.methods.name()                                                             // -> returns the function
contract.methods.name().call()                                                      // -> return Promise
contract.methods.name().call((err, result) => { console.log(result) })              // -> Compound
contract.methods.symbol().call((err, result) => { console.log(result) })            // -> COMP
contract.methods.totalSupply().call((err, result) => { console.log(result) })       // -> 10000000000000000000000000
```

#### Get an address account

https://etherscan.io/token/0xc00e94cb662c3520282e6f5717214004a7f26888?a=0x0f50d31b3eaefd65236dd3736b863cffa4c63c4e

```javascript
var accountAddress = '0x0f50d31b3eaefd65236dd3736b863cffa4c63c4e'
contract.methods.balanceOf(accountAddress).call((err, result) => { console.log(result) }) // -> 344957270000000000000000
```