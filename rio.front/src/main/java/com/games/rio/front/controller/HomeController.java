package com.games.rio.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.UserDao;
import com.games.rio.backend.model.ProductModel;
import com.games.rio.backend.model.UserModel;

@Controller
public class HomeController {
	@Autowired
	private UserDao userDao;
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv=new ModelAndView("index");
		/*UserModel user=new UserModel();
		user.setName("Angel");
		user.setEmail("angel20@gmail.com");
		user.setContact("1234");
		user.setAddress("Madurai");
		userDao.save(user);*/
		return mv;
	}
		
	@RequestMapping(value="/products1", method=RequestMethod.GET)
	 public ModelAndView product1(){
		ModelAndView mv=new ModelAndView();
		
		return mv;
	 }
	
}
