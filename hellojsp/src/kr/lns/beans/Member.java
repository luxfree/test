package kr.lns.beans;

public class Member {
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Member(String username, String userid, String nickname, String userpass, String email, String tel) {
		super();
		this.username = username;
		this.userid = userid;
		this.nickname = nickname;
		this.userpass = userpass;
		this.email = email;
		this.tel = tel;
	}
	private String username;
	private String userid;
	private String nickname;
	private String userpass;
	private String email;
	private String tel;
	/**
	 * @return the username
	 */
	public String getUsername() {
		return username;
	}
	/**
	 * @param username the username to set
	 */
	public void setUsername(String username) {
		this.username = username;
	}
	/**
	 * @return the userid
	 */
	public String getUserid() {
		return userid;
	}
	/**
	 * @param userid the userid to set
	 */
	public void setUserid(String userid) {
		this.userid = userid;
	}
	/**
	 * @return the nickname
	 */
	public String getNickname() {
		return nickname;
	}
	/**
	 * @param nickname the nickname to set
	 */
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	/**
	 * @return the userpass
	 */
	public String getUserpass() {
		return userpass;
	}
	/**
	 * @param userpass the userpass to set
	 */
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}
	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Member [username=" + username + ", userid=" + userid + ", nickname=" + nickname + ", userpass="
				+ userpass + ", email=" + email + ", tel=" + tel + "]";
	}
	
	
}
