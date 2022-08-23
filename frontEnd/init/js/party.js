import { PartyContract, web3 } from "./config.js";

let btn = document.querySelector("#btn");

let members = document.querySelector("#members");

console.log(PartyContract.methods);

btn.addEventListener("click", async () => {
  let account = await web3.eth.getAccounts();

  PartyContract.methods
    .joinParty("weiwewiewi")
    .send({
      from: account[0],
      value: web3.utils.toWei("0.1", "ether"),
    })
    .then((data) => console.log(data));
});

const getTotalMember = async () => {
  let totalMember = await PartyContract.methods.totalMember().call();
  members.textContent = totalMember;
};

getTotalMember();
