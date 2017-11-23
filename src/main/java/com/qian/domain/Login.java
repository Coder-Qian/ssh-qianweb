
package com.qian.domain;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Login {
	
	@NotEmpty(message="姓名不可为空")
	@Size(min=6, max=12, message="姓名必须在{min}-{max}之间")
	private String username;
	
	@NotEmpty(message="密码不能为空")
	@Size(min=6,max=6,message="密码必须为{max}位")
	private String password;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Login [username=" + username + ", password=" + password + "]";
	}
	
	
	

}
