const main = async () => {
    const [voterA, voterB] = await hre.ethers.getSigners();
    const voteContractFactory = await hre.ethers.getContractFactory("VotePortal");
    const voteContract = await voteContractFactory.deploy();
    await voteContract.deployed();

    console.log("Voter A is:", voterA.address);
    console.log("Voter B is:", voterB.address);

    let voteCount;
    voteCount = await voteContract.getTotalVotes();

    let voteA = await voteContract.connect(voterA).voteForA();
    await voteA.wait();

    let voteB = await voteContract.connect(voterB).voteForB();
    await voteB.wait();

    voteCount = await voteContract.getTotalVotes();
}

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