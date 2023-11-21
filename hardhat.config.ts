import { task } from 'hardhat/config';
import "@nomiclabs/hardhat-waffle";

import { HardhatRuntimeEnvironment, HardhatUserConfig } from 'hardhat/types';
import "@nomiclabs/hardhat-web3";
import "@nomiclabs/hardhat-etherscan";
const config: HardhatUserConfig = {
  solidity: {
    version: "0.8.4",
    settings: {
      optimizer: {
        enabled: true,
        runs: 5000
      }
    }
  },
  networks: {
    hardhat: {
      chainId: 1337,
      accounts:   {
        mnemonic: `absurd anchor bullet lobster unable exclude weird lucky bar soda dumb first`
      }
    },
    
    polygon: {
      chainId: 137,
      url: `https://polygon-mainnet.infura.io/v3/41593e1650734c76bd614c93bc7e9eb0`,
      accounts:   {
        mnemonic: `dust can strong utility visa legend decrease slow open magnet sentence rent`
      },
      gasPrice: 60000000000,
    },
    mumbai: {
      chainId: 80001,
      url: `https://polygon-mumbai.infura.io/v3/41593e1650734c76bd614c93bc7e9eb0`,
      accounts:   {
        mnemonic: `absurd anchor bullet lobster unable exclude weird lucky bar soda dumb first`
      },
      gasPrice: 1500000000,
    },
    
    goerli: {
      chainId: 5,
      url: `https://goerli.infura.io/v3/8be26ae4879847fcbbe64cb1459ce36f`,
      accounts:   {
        mnemonic: `absurd anchor bullet lobster unable exclude weird lucky bar soda dumb first`
      },
      gasPrice: 6000000000,
    },
    rinkeby: {
      chainId: 4,
      url: `https://rinkeby.infura.io/v3/8be26ae4879847fcbbe64cb1459ce36f`,
      accounts:   {
        mnemonic: `absurd anchor bullet lobster unable exclude weird lucky bar soda dumb first`
      },
      gasPrice: 2000000000,
    },
    
    eth: {
      chainId: 1,
      url: `https://mainnet.infura.io/v3/8be26ae4879847fcbbe64cb1459ce36f`,
      accounts:   {
        mnemonic: `absurd anchor bullet lobster unable exclude weird lucky bar soda dumb first`
      },
      gasPrice: 15000000000,
    },
    testnet: {
      chainId: 97,
      url: `https://data-seed-prebsc-2-s3.binance.org:8545/`,
      accounts:   {
        mnemonic: ``
      },
      gasPrice: 20000000000,
    },
    mainnet: {
      chainId: 56,
      url: `https://bsc-dataseed.binance.org/`,
      accounts:   {
        mnemonic: ``
      },
      gasPrice: 5000000000,
    }
  },
  etherscan: {
    // Your API key for Etherscan
    // Obtain one at https://etherscan.io/
    apiKey: "AHN3WZ5YWU82BTJEFHKRIVR9MCCE2K3U3N"
  }
}

export default config