package com.games.rio.front.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.User;
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
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public ModelAndView register(){
		//ModelAndView mv=new ModelAndView("register");
		ModelAndView mv=new ModelAndView("register","command",new UserModel());
		return mv;

}
	/*@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("success");
		String name=request.getParameter("txtName");
		String email=request.getParameter("txtEmail");
		String contact=request.getParameter("txtContact");
		String address=request.getParameter("txtAddress");
		UserModel user=new UserModel();
		user.setName(name);
		user.setEmail(email);
		user.setContact(contact);
		user.setAddress(address);
		userDao.save(user);
		return mv;
	}	*/
	@RequestMapping(value="/register", method=RequestMethod.POST)
	 public ModelAndView register(@ModelAttribute("user") UserModel user){
		ModelAndView mv=new ModelAndView("success");
		userDao.save(user);
		return mv;
	 }
	
}