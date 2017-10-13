package com.games.rio.front.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.ProductDao;
import com.games.rio.backend.model.ProductModel;
@Controller
public class ProductController {
			@Autowired
		private ProductDao productDao;
		@RequestMapping(value="/products", method=RequestMethod.GET)
		public ModelAndView register(){
			//ModelAndView mv=new ModelAndView("register");
			ModelAndView mv=new ModelAndView("products","command",new ProductModel());
			return mv;

	}
		/*@RequestMapping(value="/products", method=RequestMethod.POST)
		public ModelAndView register(HttpServletRequest request, HttpServletResponse response){
			ModelAndView mv=new ModelAndView("success");
			String name=request.getParameter("txtName");
			String price=request.getParameter("txtPrice");
			String contact=request.getParameter("txtContact");
			String address=request.getParameter("txtAddress");
			ProductModel user=new ProductModel();
			product.setName(name);
			product.setprice(price);
			product.setContact(contact);
			Product.setAddress(address);
			productDao.save(product);
			return mv;
		}	*/
		@RequestMapping(value="/products", method=RequestMethod.POST)
		 public ModelAndView register(@ModelAttribute("product") ProductModel product){
			ModelAndView mv=new ModelAndView("success");
			productDao.save(product);
			return mv;
		 }
		
}
