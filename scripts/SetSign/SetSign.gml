function SetSign(changeSign, toThisSign){
	if (changeSign == 0 || toThisSign == 0) {
		return;
		// so we dont waste our time changing the sign of 0
		// or nullifying the number we want to flip
	}
	// lets say 1.5 and -1.95
	toThisSign = sign(toThisSign);
	// -1.95 turns into -1
	if (sign(changeSign) != toThisSign) {
	// if 1(1.5) != -1
		changeSign *= -1;
		return changeSign;
		// send 1.5 * -1, which is -1.5
	}
}