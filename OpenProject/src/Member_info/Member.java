package Member_info;

public class Member {
	private String userid;
	private String userpw;
	private String username;

	public Member() {
		super();
	}

	public Member(String userid, String userpw, String username) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	@Override
	public String toString() {
		return "Member [userid=" + userid + ", userpw=" + userpw + ", username=" + username + "]";
	}

}