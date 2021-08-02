package com.jhta.finalproject.mail;

public class AuthKey {
	// email 인증키 만들기
	public String getAuthKey(int keyLength) {
		char[] keySet = new char[] { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F',
				'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < keyLength; i++) {
			int idx = (int) (keySet.length * Math.random());
			sb.append(keySet[idx]);
		}

		return sb.toString();
	}
}
