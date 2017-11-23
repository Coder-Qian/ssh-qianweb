package com.qian.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qian.domain.Login;
import com.qian.exceps.UserNotFoundException;
import com.qian.services.LoginService;



@Controller
@RequestMapping("/qian")
public class LoginController {
	
	@Autowired
	@Qualifier("loginService")
	private LoginService loginService;

	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String doLogin(HttpServletRequest request, 
			HttpServletResponse response,
			@Validated Login login,
			BindingResult br) throws UserNotFoundException{
		
		List<ObjectError> errors = br.getAllErrors();
		if(errors.size()>0){
			FieldError nameError = br.getFieldError("username");
			FieldError passwordError = br.getFieldError("password");
			if(nameError != null){
				request.setAttribute("nameError",nameError.getDefaultMessage());
			}
			if(passwordError != null){
				request.setAttribute("passwordError",passwordError.getDefaultMessage());
			}
			request.setAttribute("username", login.getUsername());
			request.setAttribute("password",login.getPassword());
			return "/me/login.jsp";
		}
		
		boolean b = loginService.checkLogin(login);
		if(b){
			return "/index.jsp";
		}else{
			throw new UserNotFoundException("user not found in database, please check informs or regist...");
			//return "/me/login.jsp";
		}
	}
	
	public LoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}
}
