package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LogoutAction extends ActionSupport implements SessionAware {
	public Map<String, Object> session;

	public String execute() {
		boolean savedUserId = Boolean.valueOf(String.valueOf(session.get("savedUserIdFlg")));
		String loginUserId = String.valueOf(session.get("loginUserId"));
		session.clear();
		if(savedUserId) {
			session.put("savedUserIdFlg", savedUserId);
			session.put("savedUserId", loginUserId);
		}
		return SUCCESS;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		// TODO 自動生成されたメソッド・スタブ

	}

}
