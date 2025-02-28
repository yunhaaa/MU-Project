package muproject.vo;

public class Login {
	
	public String id;
	public String pw;
	public String name;
	public int mobile;
	public String email;
	public String nickname;

	public int getMobile() {
		return mobile;
	}

	public void setMobile(int mobile) {
		this.mobile = mobile;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}
	
	public String getpw() {
		return pw;
	}

	public void setpw(String pw) {
		this.pw = pw;
	}
	
	public String getname() {
		return name;
	}

	public void setname(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Login [id=" + id + ", pw=" + pw + ", name=" + name + ", mobile=" + mobile + ", email=" + email
				+ ", nickname=" + nickname + "]";
	}



	
}
