package com.qian.excep.resolvers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import com.qian.exceps.UserNotFoundException;

public class WebExceptionResolvers implements HandlerExceptionResolver {

	@Override
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("exMsg", ex.getMessage());
		
		mv.setViewName("/me/defaultError.jsp");
		
		if(ex instanceof UserNotFoundException){
			//返回登录界面让用户确认或者注册
			mv.setViewName("/me/login.jsp");
		}
		
		return mv;
	}

}
