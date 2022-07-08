const main = async () => {
    const voteContractFactory = await hre.ethers.getContractFactory('VotePortal');
    const voteContract = await voteContractFactory.deploy({
        value: hre.ethers.utils.parseEther('0.1'),
    });
    await voteContract.deployed();
    console.log("Contract deployed to:", voteContract.address);
};

const runMain = async () => {
    try {
      await main();
      process.exit(0); 
    } catch (error) {
      console.log(error);
      process.exit(1); 
    }
  };
  
runMain();

