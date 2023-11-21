import { Contract, Event } from '@ethersproject/contracts';
import { SignerWithAddress } from '@nomiclabs/hardhat-ethers/signers';
import { ethers, network } from "hardhat";
import hrv from "hardhat";
import { convertToObject } from 'typescript';

describe("SignerTest", function () {
    let master: SignerWithAddress;
    beforeEach(async function () {
        [master] = await ethers.getSigners();
    });

    it("HashTest", async function () {
        var seed = 500;
        var seq = 5;
        var address = master.address;

        var hash = ethers.utils.solidityPack(['uint256', 'uint256','address' ], [seed, seq, address]);
        console.log(seed,seq,address);
        console.log(hash);
    });

    
    it("SignTest", async function () {
        var seed = 500;
        var seq = 5;
        var address = master.address;

        console.log(seed,seq,address);
        var hash = ethers.utils.keccak256(ethers.utils.solidityPack(['uint256', 'uint256','address' ], [seed, seq, address]));
        console.log(hash);
        var r = await hrv.web3.eth.sign(hash, master.address);
        console.log(r);
    });
});

