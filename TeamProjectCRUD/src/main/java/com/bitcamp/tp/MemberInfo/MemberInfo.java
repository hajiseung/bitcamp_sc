package com.bitcamp.tp.MemberInfo;

public class MemberInfo {
	private String userId;
	private String userName;
	private String userPassword;
	private String userProfilePhoto;
	private String userIntro;
	private boolean userBlock = true;
	private boolean manager = false;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserProfilePhoto() {
		return userProfilePhoto;
	}

	public void setUserProfilePhoto(String userProfilePhoto) {
		this.userProfilePhoto = userProfilePhoto;
	}

	public String getUserIntro() {
		return userIntro;
	}

	public void setUserIntro(String userIntro) {
		this.userIntro = userIntro;
	}

	public boolean isUserBlock() {
		return userBlock;
	}

	public void setUserBlock(boolean userBlock) {
		this.userBlock = userBlock;
	}

	public boolean isManager() {
		return manager;
	}

	public void setManager(boolean manager) {
		this.manager = manager;
	}

	@Override
	public String toString() {
		return "MemberDao [userId=" + userId + ", userName=" + userName + ", userPassword=" + userPassword
				+ ", userProfilePhoto=" + userProfilePhoto + ", userIntro=" + userIntro + ", userBlock=" + userBlock
				+ ", manager=" + manager + "]";
	}

}
