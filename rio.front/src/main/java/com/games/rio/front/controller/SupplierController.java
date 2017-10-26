package com.games.rio.front.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.games.rio.backend.dao.CategoryDao;
import com.games.rio.backend.dao.ProductDao;
import com.games.rio.backend.dao.SupplierDao;
import com.games.rio.backend.model.Category;
import com.games.rio.backend.model.ProductModel;
import com.games.rio.backend.model.Supplier;

@Controller
public class SupplierController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;
	@RequestMapping(value="/supplier" , method=RequestMethod.GET)
	public ModelAndView myProducts() {
		ModelAndView mv=new ModelAndView ("supplier");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	
	@RequestMapping(value="/supplier" , method=RequestMethod.POST)
	public ModelAndView viewMyProducts() {
		ModelAndView mv=new ModelAndView ("supplier");
		List<ProductModel> products=productDao.findAll();
		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	
	
	@RequestMapping(value="/addcategory", method=RequestMethod.GET)
	public ModelAndView viewAddCategory(){
		ModelAndView mv=new ModelAndView("add","command",new Category());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	@RequestMapping(value="/addsupplier", method=RequestMethod.GET)
	public ModelAndView viewAddSupplier(){
		ModelAndView mv=new ModelAndView("add","command",new Supplier());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	 public ModelAndView addCategory(@ModelAttribute("category") Category category){
		categoryDao.save(category);
		ModelAndView mv=new ModelAndView("supplier");
		return mv;
	 }
	@RequestMapping(value="/addsupplier", method=RequestMethod.POST)
	 public ModelAndView addSupplier(@ModelAttribute("supplier") Supplier supplier){
		supplierDao.save(supplier);
		ModelAndView mv=new ModelAndView("supplier");
		return mv;
	 }	
	@RequestMapping(value="/delete", method=RequestMethod.GET)
	public ModelAndView viewDelete(){
		ModelAndView mv=new ModelAndView("delete","command",new ProductModel());
		return mv;
}
	@RequestMapping(value="/delete", method=RequestMethod.POST)
	 public ModelAndView deleteProduct(HttpServletRequest request, HttpServletResponse response){
		int pid=Integer.parseInt(request.getParameter("id"));
		 		//Product product=productDao.delete(id);	
		 		productDao.delete(pid);
		 		ModelAndView mv=new ModelAndView("myproducts");
		 		return mv;
	 }
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	public ModelAndView viewUpdate(){
		ModelAndView mv=new ModelAndView("add","command",new ProductModel());
		return mv;
}
	@RequestMapping(value="/update", method=RequestMethod.POST)
	 public ModelAndView updateProduct(@ModelAttribute("product") ProductModel product){
		productDao.update(product);
		ModelAndView mv=new ModelAndView("stock");
		return mv;
	 }


}


