import { Contract, Event } from '@ethersproject/contracts';
import { SignerWithAddress } from '@nomiclabs/hardhat-ethers/signers';
import { ethers, network } from "hardhat";
import hrv from "hardhat";
import { expect } from 'chai';
import { convertToObject } from 'typescript';

describe("Wallet", function () {
    let master: SignerWithAddress;
    let user: SignerWithAddress;
    let wallet: Contract;

    beforeEach(async function () {
        [master, user] = await ethers.getSigners();
        let randomFactory = await ethers.getContractFactory("PuzzledSpaceWallet");
        wallet = await randomFactory.deploy();
    });

    it.only("Base widthrawal", async function () {
        var sig =  sign(user.address, 1, 1, 1, user.address, 1337, wallet.address);
        await wallet.connect(user).withdrawal(user.address, 1, 1, 1, sig);
    });

    async function sign(to: string, amount: number, exp: number, id: number, from: string, chain: number, address: string) {
        var hash = ethers.utils.keccak256(
            ethers.utils.solidityPack(['address', 'uint256','uint256', 'uint256', 'address', 'uint256', 'address'],
                [to,amount, exp, id, from, chain, address])
        );
    console.log( [to,amount, exp, id, from, chain, address]);
        return await hrv.web3.eth.sign(hash, master.address);
    }
});

