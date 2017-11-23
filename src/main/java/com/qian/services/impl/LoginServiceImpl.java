package com.qian.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.qian.dao.LoginDao;
import com.qian.domain.Login;
import com.qian.services.LoginService;
  
@Service("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	@Qualifier("loginDao")
	private LoginDao loginDao;
	
	public LoginDao getLoginDao() {
		return loginDao;
	}

	public void setLoginDao(LoginDao loginDao) {
		this.loginDao = loginDao;
	}

	@Override
	public boolean checkLogin(Login login) {
		System.out.println("===f=");
		
		return loginDao.checkLoginInfo(login);
//		if("admin".equals(login.getUsername()) && "123".equals(login.getPassword())){
//			return true;
//		}else{
//			return false;
//		}
	}

}
