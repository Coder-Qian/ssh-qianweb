
package com.qian.domain;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class Login {
	
	@NotEmpty(message="��������Ϊ��")
	@Size(min=6, max=12, message="����������{min}-{max}֮��")
	private String username;
	
	@NotEmpty(message="���벻��Ϊ��")
	@Size(min=6,max=6,message="�������Ϊ{max}λ")
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
