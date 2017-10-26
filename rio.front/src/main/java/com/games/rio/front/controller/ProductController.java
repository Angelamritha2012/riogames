package com.games.rio.front.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.ProductDao;
import com.games.rio.backend.model.ProductModel;
import com.games.rio.backend.model.UserModel;
@Controller
public class ProductController {
			@Autowired
			private ProductDao productDao;
		
/*
			@RequestMapping(value="/supplier", method=RequestMethod.GET)
			public ModelAndView supplier() {
			ModelAndView mv=new ModelAndView("supplier");
				return mv;
			}
			@RequestMapping(value="/supplier", method=RequestMethod.POST)
			public ModelAndView suppiler() {
			ModelAndView mv=new ModelAndView("supplier");
				return mv;
			}*/
			
			
			
			/*------PRODUCT PAGE---------*/
			
			
			@RequestMapping(value="/products" , method=RequestMethod.GET)
			public ModelAndView products() {
				ModelAndView mv=new ModelAndView ();
				List<ProductModel> products=productDao.findAll();
				mv.getModelMap().addAttribute("products", products);
				return mv;
			}
			@RequestMapping(value="/product", method=RequestMethod.GET)
			public ModelAndView getProductById(Model model,@RequestParam("id") int productId) {
				ModelAndView mv=new ModelAndView("product");
				ProductModel product =productDao.findById(productId);
				mv.getModelMap().addAttribute("product", product);
				return mv;
			}
			
			
			
		/*----------ADD PAGE------------*/
			
			
			

			@RequestMapping(value="/add" , method=RequestMethod.GET)
			public ModelAndView viewAdd() {
				ModelAndView mv=new ModelAndView ("add"/*,"command",new ProductModel()*/);
				return mv;
			}
			@RequestMapping(value="/addproduct", method=RequestMethod.GET)
		  	public ModelAndView addProduct(){
				ModelAndView mv=new ModelAndView ("add","command",new ProductModel());
				return mv;
			}
/*//			@RequestMapping(value="/addproduct", method=RequestMethod.POST)
//		  	public ModelAndView viewAddProduct(@ModelAttribute("product") ProductModel product){
//			public ModelAndView viewAddProduct(HttpServletRequest request, HttpServletResponse response) {
//		  		ModelAndView mv;
//		  		String pname=request.getParameter("name");
//		  		mv=new ModelAndView("products");
//		  		productDao.save(product);
//		  		return mv;
//			}
*/			@RequestMapping(value="/addproduct", method=RequestMethod.POST)
		  	public ModelAndView viewAddProduct(@ModelAttribute("product") ProductModel product){
				ModelAndView mv=new ModelAndView("supplier");
				productDao.save(product);
				return mv;
		
			}	
		
		
		
		
}

