const address = "0xAb26C0A7556698D34E7C41df36AE43b153a6a0c8";

import Party from "../abi/Party.json" assert { type: "json" }; //abi

export var web3;

//初始化function

const init = async () => {
  if (window.ethereum) {
    web3 = new Web3(window.ethereum);
    await window.ethereum.enable();
  } else {
    // .....
    const provider = new Web3.providers.HttpProvider(
      "https://rinkeby.infura.io/v3/389389e17a1d4f288688e7fb9fce5fe0"
    );
    web3 = new Web3(provider);
  }
};

init();

export const PartyContract = new web3.eth.Contract(Party, address);
