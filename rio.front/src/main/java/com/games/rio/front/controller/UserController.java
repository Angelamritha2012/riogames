package com.games.rio.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.UserDao;
import com.games.rio.backend.model.UserModel;

@Controller
public class UserController {
	
		@Autowired
		private UserDao userDao;
		@RequestMapping(value="/register1", method=RequestMethod.GET)
		public ModelAndView register1(){
			ModelAndView mv=new ModelAndView("register1","command",new UserModel());
			return mv;
		}
		@RequestMapping(value="/register1", method=RequestMethod.POST)
		 public ModelAndView register1(@ModelAttribute("user") UserModel user){
			ModelAndView mv=new ModelAndView("login");
			userDao.save(user);
			return mv;
		 }
		/*@RequestMapping(value="/validate", method=RequestMethod.POST)
		public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){
			String email=request.getParameter("txtEmail");
			String password=request.getParameter("txtPassword");		
			ModelAndView mv=null;
			if(userDao.validate(email, password)){
				mv=new ModelAndView("success");
				//mv.getModelMap().addAttribute("user", user);
			}else{
				mv=new ModelAndView("failure");		
				//mv.getModelMap().addAttribute("user", user);
			}			
			return mv;
		
		}*/
	}


