# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat run scripts/deploy.js
```
Now to actually start running your local blockchain in your terminal pointing to your directory execute this command: 

npx hardhat node

Gives a local blockchain
and some new addresses with their public & private keys and ETH balance  

1. Now, we can continue by deploying the contract to the local blockchain using Hardhat, by running 

npx hardhat run scripts/deploy.js.

2. Alternatively, we can also use Remix and have it deploy contracts to your local blockchain. 
The second method will also involve setting up Metamask to work with your local blockchain, 
and will give you an idea of how to locally test your React/Next.js apps using contracts running on the local blockchain as well, so let's do that.

Metamask Connection
- click on Networks, followed by Localhost 8545
- Chain ID to 31337(this is the chainId for the local blockchain you are running)
- Import Account - use any one private address from the list of addresses provided by hardhat 

Remix
- Create Greeter.sol - copy the same code
- Now to deploy, go to deployment tab and in your environment select Injected Provider - Metamask
- make sure that the account connected is the one that you imported above and the network is Localhost 8545 on your MetaMask
- Set a greeting and click on deploy. Wait for it to finish. Your contract is now deployed 
