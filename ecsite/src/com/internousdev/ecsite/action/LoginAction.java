package com.internousdev.ecsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.internousdev.ecsite.util.InputChecker;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {
	private String loginUserId;
	private String loginPassword;
	public Map<String, Object> session;
	private LoginDAO loginDAO = new LoginDAO();
	private LoginDTO loginDTO = new LoginDTO();
	private BuyItemDAO buyItemDAO = new BuyItemDAO();
	private String isNotUserInfoErrorMessage;
	private List<String> userIdErrorMessageList;
	private List<String> userPasswordErrorMessageList;
	private boolean savedUserIdFlg;

	public String execute() {
		String result = ERROR;

		InputChecker inputChecker = new InputChecker();
		userIdErrorMessageList = inputChecker.doCheck("ユーザーID", loginUserId, 1, 8, true, false, false, true, false,
				false,false);
		userPasswordErrorMessageList = inputChecker.doCheck("パスワード", loginPassword, 1, 16, true, false, false, true,
				false,false, false);

		if (savedUserIdFlg) {
			session.put("savedUserIdFlg", true);
			session.put("savedUserId", loginUserId);
		} else {
			session.remove("savedUserIdFlg");
			session.remove("savedUserId");
		}

		loginDTO = loginDAO.getLoginUserInfo(loginUserId, loginPassword);
		session.put("loginUser", loginDTO);

		if (((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			result = SUCCESS;
			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id", loginDTO.getLoginId());
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
			return result;

		}

		isNotUserInfoErrorMessage = "ユーザーID又はパスワードが間違っています。";
		return result;

	}

	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public boolean isSavedUserIdFlg() {
		return savedUserIdFlg;
	}

	public void setSavedUserIdFlg(boolean savedUserIdFlg) {
		this.savedUserIdFlg = savedUserIdFlg;
	}

	public String getLoginPassword() {
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword) {
		this.loginPassword = loginPassword;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getIsNotUserInfoErrorMessage() {
		return isNotUserInfoErrorMessage;
	}

	public void setIsNotUserInfoErrorMessage(String isNotUserInfoErrorMessage) {
		this.isNotUserInfoErrorMessage = isNotUserInfoErrorMessage;
	}

	public List<String> getUserIdErrorMessageList() {
		return userIdErrorMessageList;
	}

	public void setUserIdErrorMessageList(List<String> userIdErrorMessageList) {
		this.userIdErrorMessageList = userIdErrorMessageList;
	}

	public List<String> getUserPasswordErrorMessageList() {
		return userPasswordErrorMessageList;
	}

	public void setUserPasswordErrorMessageList(List<String> userPasswordErrorMessageList) {
		this.userPasswordErrorMessageList = userPasswordErrorMessageList;
	}
}
