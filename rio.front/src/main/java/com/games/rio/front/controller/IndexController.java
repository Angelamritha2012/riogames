package com.games.rio.front.controller;
import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.games.rio.backend.dao.UserDao;
import com.games.rio.backend.model.UserModel;



@Controller
public class IndexController {
	@Autowired
	private UserDao userDao;
	@RequestMapping(value="/", method=RequestMethod.GET)
	public ModelAndView index(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("index");
		Principal principal=request.getUserPrincipal();
		UserModel user=null;
		if(principal!=null){
			user=userDao.findById(principal.getName());
		}
		mv.getModelMap().addAttribute("user", user);
		HttpSession session =request.getSession(false);
		if(session!=null)
			session.setAttribute("user",user);
		
/*		Customer customer=new Customer();
		customer.setName("Mukil");
		customer.setEmail("mukil@example.com");
		customer.setAddress("Madurai");
		customer.setContact("9876543210");
		customerDao.save(customer)*/;		
		return mv;
	}
	@RequestMapping(value="/accessDenied", method=RequestMethod.GET)
	public ModelAndView accessDenied(){
		ModelAndView mv=new ModelAndView("accessdenied");
		return mv;
	}
}
