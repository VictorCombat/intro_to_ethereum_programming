const Web3 = require('web3')
const web3 = new Web3('https://mainnet.infura.io/v3/0d7fb1d0a2134c51ae356fa62e39e75c')

// Show average gas price (in ether)
web3.eth.getGasPrice().then((result) => {
    console.log()
    console.log("Average gas price (in ether): ")
    console.log(web3.utils.fromWei(result, 'ether'))
    console.log()
})

// Hashing functions
console.log("SHA Function: ")
console.log(web3.utils.sha3('Ethereum Programming'))
console.log(web3.utils.keccak256('Ethereum Programming'))
console.log(web3.utils.soliditySha3('Ethereum Programming'))
console.log(web3.utils.sha3('34456'))
console.log()

// Randomness
console.log(web3.utils.randomHex(2))    // Length in parameter
console.log(web3.utils.randomHex(10))
console.log()

// UnderscoreJS (https://underscorejs.org/)
// console.log(web3.utils._)
const _ = web3.utils._
_.each({ key1: 'value1', key2: 'value2' }, (value, key) => {
    console.log(key)
})
