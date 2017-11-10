package com.games.rio.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.UserDao;
import com.games.rio.backend.model.UserModel;
@Controller
public class LoginController {
	@Autowired
	private UserDao userDao;
	/*@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView login(){
		ModelAndView mv=new ModelAndView("login","command",new UserModel());
		return mv;
	}*/
	@RequestMapping(value="/login", method=RequestMethod.GET)
	 	public ModelAndView login(){
	 		ModelAndView mv=new ModelAndView("login");
	 		return mv;
	 	}
	 	@RequestMapping(value="/logout", method=RequestMethod.GET)
	 	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response){
	 		HttpSession session=request.getSession(false);
	 		SecurityContextHolder.clearContext();
	 		if(session!=null)
	 			session.invalidate();
	 		ModelAndView mv=new ModelAndView("redirect: ./");
	 		return mv;
	 	}
	 	@RequestMapping(value="/admin//logout", method=RequestMethod.GET)
	 	public ModelAndView adminlogout(HttpServletRequest request, HttpServletResponse response){
	 		HttpSession session=request.getSession(false);
	 		SecurityContextHolder.clearContext();
            if(session!=null)
	 			session.invalidate();
	 		ModelAndView mv=new ModelAndView("redirect: ./");
	 		return mv;
	 	}
	 	
		@RequestMapping(value="/login", method=RequestMethod.POST)
		public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			UserModel user=userDao.findById(email);	
			ModelAndView mv=null;
			if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
			//if(user!=null) {
			HttpSession session=request.getSession(true);
		       session.setAttribute("email", email);
		       mv.getModelMap().addAttribute("user", user);
		       mv=new ModelAndView("supplier");
		       
			}else{
				mv=new ModelAndView("failure");					
			}
			return mv;
		}	 	
/*	@RequestMapping(value="/validate", method=RequestMethod.POST)
	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		UserModel user=userDao.findById(email);	
		
		ModelAndView mv=null;
		//if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
		if(user!=null) {
		HttpSession session=request.getSession(true);
	       session.setAttribute("email", email);
	       mv=new ModelAndView();
	       if(email.equalsIgnoreCase("beetroot@ex.com"))
	       {
	    	   mv=new ModelAndView("redirect:/admin/supplier");
	       }else {
	    	   mv=new ModelAndView("redirect:/admin/products");
	       }
			
			//mv.getModelMap().addAttribute("user", user);
		}else{
			mv=new ModelAndView("failure");		
			mv.getModelMap().addAttribute("user", user);
		}
		
		return mv;
	}*/
	 /*	@RequestMapping(value="/validate", method=RequestMethod.POST)
	 	public ModelAndView validate(HttpServletRequest request, HttpServletResponse response){		
	 		String email=request.getParameter("txtemail");
	 		String password=request.getParameter("txtpassword");
	 		UserModel user=userDao.findById(request.getParameter("txtemail"));	
	 		ModelAndView mv=null;
	 		if(email.equals(user.getEmail()) && password.equals(user.getPassword())){
	 			HttpSession session=request.getSession(true);
	 			session.setAttribute("email", email);
	 			mv=new ModelAndView("redirect:./");
	 			mv.getModelMap().addAttribute("user", user);
	 		}
	 		else{
	 			mv=new ModelAndView("failure");		
	 			mv.getModelMap().addAttribute("user", user);
	 		}			
	 		return mv;
	 	}*/
	/*@RequestMapping(value="/validate", method=RequestMethod.POST)
	public ModelAndView validate (HttpServletRequest request, HttpServletResponse response){
		String email=request.getParameter("txtemail");
		String password=request.getParameter("txtpassword");		
		ModelAndView mv=null;
		if(userDao.validate(email, password)){
			mv=new ModelAndView("success");
			//mv.getModelMap().addAttribute("user", user);
		}else{
			mv=new ModelAndView("failure");		
			//mv.getModelMap().addAttribute("user",user);
		}		
		return mv;
	
	}*/
}
