package com.games.rio.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.model.UserModel;

@Controller
public class UserController {
	
		@Autowired
		private UserDao UserDao;
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public ModelAndView register(){
			ModelAndView mv=new ModelAndView("register");
			return mv;
		}
		@RequestMapping(value="/register", method=RequestMethod.POST)
		 public ModelAndView register(@ModelAttribute("user") UserModel user){
			ModelAndView mv=new ModelAndView("success");
			UserDao.save(user);
			return mv;
		 }
		@RequestMapping(value="/validate", method=RequestMethod.POST)
		public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){
			String email=request.getParameter("txtEmail");
			String password=request.getParameter("txtPassword");		
			ModelAndView mv=null;
			if(UserDao.validate(email, password)){
				mv=new ModelAndView("success");
				//mv.getModelMap().addAttribute("user", user);
			}else{
				mv=new ModelAndView("failure");		
				//mv.getModelMap().addAttribute("user", user);
			}			
			return mv;
		
		}
	}


