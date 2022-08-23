import { PartyContract, web3 } from "./config.js";

let btn = document.querySelector("#btn");
let members = document.querySelector("#members");
let intro = document.querySelector("#intro");
let ethBalance = document.querySelector("#ethBalance");

console.log(PartyContract.methods);

btn.addEventListener("click", async () => {
  let account = await web3.eth.getAccounts();

  PartyContract.methods
    .joinParty("WeiWei")
    .send({ from: account[0], value: web3.utils.toWei("0.1", "ether") })
    .then((data) => console.log(data));
});

const getUserBalance = async () => {
  let account = await web3.eth.getAccounts();
  let userBalance = await web3.eth.getBalance(account[0]);
  let weiToEther = await web3.utils.fromWei(userBalance);
  ethBalance.textContent = weiToEther;
};

const getTotalMember = async () => {
  let totalMember = await PartyContract.methods.totalMember().call();
  members.textContent = totalMember;
};

const checkMemberInParty = async (account = "") => {
  account = await web3.eth.getAccounts();
  let memberInParty = await PartyContract.methods
    .partyChecklist(account[0])
    .call();

  let introText = memberInParty
    ? "You're already in the party."
    : "You're not at the party yet.";

  intro.textContent = introText;
};

const getPartyMember = async () => {
  let account = await web3.eth.getAccounts();
  let members = await PartyContract.getPastEvents("PartyMember", {
    filter: {
      memberAddress: account[0],
    },
    fromBlock: 0,
    toBlock: "latest",
  });
  console.log(members);
};

getUserBalance();

getTotalMember();

checkMemberInParty();

getPartyMember();

window.ethereum.on("accountsChanged", (accounts) => {
  let account = accounts[0];
  checkMemberInParty(account);
  console.log(account);
});
