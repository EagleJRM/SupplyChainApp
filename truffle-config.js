const HDWalletProvider = require("@truffle/hdwallet-provider");
var mnemonicPhrase = "genre chest delay august panther mansion protect guilt priority dawn giraffe toddler";


module.exports = {
  networks: {
   development: {
    host: "127.0.0.1",
    port: 7545,
    network_id: "5777"
   },
   ropsten: {
       provider: function() { 
        return new HDWalletProvider(mnemonic, "https://ropsten.infura.io/v3/3df5e1111c1d4c4fa80a7046177d3244");
       },
       network_id: 3,
       gas: 4500000,
       gasPrice: 10000000000,
   },
   live: {
    provider: function() { 
     return new HDWalletProvider(mnemonic, "https://mainnet.infura.io/v3/3df5e1111c1d4c4fa80a7046177d3244");
    },
    network_id: 1,
    gas: 7500000,
    gasPrice: 10000000000,
    }
  }
};