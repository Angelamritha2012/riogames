package com.games.rio.front.controller;

import java.util.List;

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
@Controller
public class ProductController {
			@Autowired
		private ProductDao productDao;
		
		@RequestMapping(value="/supplier", method=RequestMethod.GET)
		 public ModelAndView supplier(){
			ModelAndView mv=new ModelAndView();
			return mv;
		 }
		@RequestMapping(value="/products1" , method=RequestMethod.GET)
		public ModelAndView products1() {
			ModelAndView mv=new ModelAndView ("products1");
			List<ProductModel> products= productDao.findAll();
			mv.getModelMap().addAttribute("products", products);
			return mv;
		}
		@RequestMapping(value="/productdetails", method=RequestMethod.GET)
		public ModelAndView getProductById(Model model,@RequestParam("id") int productId) {
			ModelAndView mv=new ModelAndView("productdetails");
			ProductModel product =productDao.findById(productId);
			mv.getModelMap().addAttribute("product", product);
			return mv;
		}

		@RequestMapping(value="/add" , method=RequestMethod.GET)
		public ModelAndView add() {
			ModelAndView mv=new ModelAndView ("add","command",new ProductModel());
			return mv;
		}
		@RequestMapping(value="/add", method=RequestMethod.POST)
	  	public ModelAndView add(@ModelAttribute("products") ProductModel products){
	  		ModelAndView mv=new ModelAndView("products1");
	  		productDao.save(products);
	  		return mv;
		}
		
}
