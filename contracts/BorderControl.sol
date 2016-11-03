pragma solidity ^0.4.4;
import "VisaApplication.sol";

contract BorderControl {
  function personHasVisa(address visaApplicationAddress, string document) constant returns (bytes32) {
		VisaApplication va = VisaApplication(visaApplicationAddress);
    return va.checkStatus(document);
	}
}

