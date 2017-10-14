package com.games.rio.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.UserDao;

@Controller
public class User {
	
	
	 
		@Autowired
		private UserDao UserDao;
		@RequestMapping(value="/register", method=RequestMethod.POST)
		public ModelAndView register(){
			ModelAndView mv=new ModelAndView("register");
			return mv;
		}
	}



