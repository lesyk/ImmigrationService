pragma solidity ^0.4.4;

contract VisaApplication {
  address public owner;
  mapping (bytes32 => bytes32) private visaForms;

  /* setting owner of the contract in constructor */
  function VisaApplication() {
    owner = msg.sender;
  }

  function createVisaForm(string document) {
    visaForms[calculateHash(document)] = "Under review";
  }

  /* accesible only by owner */
  function decide(string document, bytes32 decision) {
    if(msg.sender == owner) {
      var hash = calculateHash(document);
      visaForms[hash] = decision;
    }
  }

  function calculateHash(string document) constant returns (bytes32) {
    return sha256(document);
  }

  function checkStatus(string document) constant returns (bytes32) {
    var hash = calculateHash(document);
    return visaForms[hash];
  }
}
