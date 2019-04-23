package com.internousdev.ecsite.dto;

public class LoginDTO {

	private boolean loginFlg = false;
	private String loginId;
	private String loginPassword;
	private String userName;

	public boolean getLoginFlg() {
		// TODO 自動生成されたメソッド・スタブ
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg) {
		this.loginFlg  = loginFlg;

	}

	public String getLoginId() {
		// TODO 自動生成されたメソッド・スタブ
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;

		// TODO 自動生成されたメソッド・スタブ

	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
		// TODO 自動生成されたメソッド・スタブ

	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
		// TODO 自動生成されたメソッド・スタブ

	}



}
