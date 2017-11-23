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

import com.qian.domain.Register;
import com.qian.services.RegistService;

@Controller
@RequestMapping("/qian")
public class RegistController {

	@Autowired
	@Qualifier("registService")
	private RegistService registService;

	@RequestMapping(value="/regist.do", method=RequestMethod.POST)
	public String doLogin(HttpServletRequest request, 
			HttpServletResponse response,
			@Validated Register register,
			BindingResult br){
		
		List<ObjectError> errors = br.getAllErrors();
		if(errors.size()>0){
			FieldError nameError = br.getFieldError("username");
			FieldError passwordError = br.getFieldError("password");
			FieldError emailError = br.getFieldError("email");
			
			if(nameError != null){
				request.setAttribute("nameError",nameError.getDefaultMessage());
			}
			if(passwordError != null){
				request.setAttribute("passwordError",passwordError.getDefaultMessage());
			}
			if(emailError != null){
				request.setAttribute("emailError",emailError.getDefaultMessage());
			}
			request.setAttribute("username", register.getUsername());
			request.setAttribute("password",register.getPassword());
			request.setAttribute("email",register.getEmail());
			return "/me/regist.jsp";
		}
		
		boolean b = registService.registWebUser(register);
		if(b){
			return "/index.jsp";
		}else{
			return "/me/regist.jsp";
		}
	}

	public RegistService getRegistService() {
		return registService;
	}

	public void setRegistService(RegistService registService) {
		this.registService = registService;
	}
	
}
