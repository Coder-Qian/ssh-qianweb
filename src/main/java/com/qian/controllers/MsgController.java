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

import com.qian.domain.MsgUser;
import com.qian.services.RegistService;

@Controller
@RequestMapping("/qian")
public class MsgController {

	@Autowired
	@Qualifier("registService")
	private RegistService registService;

	@RequestMapping(value="/msg.do", method=RequestMethod.POST)
	public String doLogin(HttpServletRequest request, 
			HttpServletResponse response,
			@Validated MsgUser msgUser,
			BindingResult br){
		
		System.out.println("¡·--->"+msgUser.getName()+ " "+msgUser.getMsg());
		List<ObjectError> errors = br.getAllErrors();
		if(errors.size()>0){
			FieldError nameError = br.getFieldError("name");
			FieldError phoneError = br.getFieldError("phone");
			FieldError msgError = br.getFieldError("msg");
			
			if(nameError != null){
				request.setAttribute("nameError",nameError.getDefaultMessage());
			}
			if(phoneError != null){
				request.setAttribute("phoneError",phoneError.getDefaultMessage());
			}
			if(msgError != null){
				request.setAttribute("msgError",msgError.getDefaultMessage());
			}
			request.setAttribute("name", msgUser.getName());
			request.setAttribute("phone",msgUser.getPhone());
			request.setAttribute("msg",msgUser.getMsg());
			return "/me/contact.jsp";
		}
		
		System.out.println("--->"+msgUser.getName()+ " "+msgUser.getMsg());
		int b = registService.saveMsgUser(msgUser);
		if(b>0){
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
