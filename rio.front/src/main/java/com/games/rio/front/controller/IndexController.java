package com.games.rio.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.UserDao;


@Controller
public class IndexController {
	@Autowired
	private UserDao userDao;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(){
		ModelAndView mv=new ModelAndView("index");
/*		user user=new user();
		user.setName("Mukil");
		user.setEmail("mukil@example.com");
		user.setAddress("Madurai");
		user.setContact("9876543210");
		userDao.save(user)*/;		
		return mv;
	}
/*	@RequestMapping(value="/header", method=RequestMethod.GET)
	public ModelAndView header(){
		ModelAndView mv=new ModelAndView("header");
		return mv;
	}*/
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv=new ModelAndView("login");
		return mv;
	}

	
	
	/*
	@RequestMapping(value="/", method=RequestMethod.POST)
	public ModelAndView index(){
	
	}
	*/
}
