function SetSign(changeSign, toThisSign){
	if (changeSign == 0 || toThisSign == 0) {
		return changeSign;
	}
	toThisSign = sign(toThisSign);
	if (sign(changeSign) != toThisSign) {
		changeSign *= -1;
	}
	return changeSign;
}