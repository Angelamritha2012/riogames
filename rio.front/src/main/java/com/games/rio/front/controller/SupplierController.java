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
	/*@RequestMapping(value="/supplier" , method=RequestMethod.GET)
	public ModelAndView myProducts() {
		ModelAndView mv=new ModelAndView ("supplier");
		List<ProductModel> products=productDao.findAll();
		List<Category> category=categoryDao.findAll();
		List<Supplier> supplier=supplierDao.findAll();
		mv.getModelMap().addAttribute("supplier", supplier);

		mv.getModelMap().addAttribute("category", category);

		mv.getModelMap().addAttribute("products", products);
		return mv;
	}
	
	@RequestMapping(value="/supplier" , method=RequestMethod.POST)
	public ModelAndView viewMyProducts() {
		ModelAndView mv=new ModelAndView ("redirect:supplier");
		List<ProductModel> products=productDao.findAll();
		List<Category> category=categoryDao.findAll();
List<Supplier> supplier=supplierDao.findAll();
		mv.getModelMap().addAttribute("category", category);
		mv.getModelMap().addAttribute("supplier", supplier);

		mv.getModelMap().addAttribute("products", products);
		return mv;
	}*/
	@RequestMapping(value="/admin/supplier" , method=RequestMethod.GET)
	 	public ModelAndView mysupplier() {
	 		ModelAndView mv=new ModelAndView ("supplier");
	 		List<ProductModel> products=productDao.findAll();
	 		List<Category> categories=categoryDao.findAll();
	 		List<Supplier> suppliers=supplierDao.findAll();
	 		mv.getModelMap().addAttribute("products", products);
	 		mv.getModelMap().addAttribute("categories", categories);
	 		mv.getModelMap().addAttribute("suppliers", suppliers);
	  		return mv;
	  	}
	  	
	 	@RequestMapping(value="/admin/supplier" , method=RequestMethod.POST)
	 	public ModelAndView viewMysupplier() {
	 		ModelAndView mv=new ModelAndView ("supplier");
	 		List<ProductModel> products=productDao.findAll();
	 		mv.getModelMap().addAttribute("products", products);
	 		List<Category> categories=categoryDao.findAll();
	 		mv.getModelMap().addAttribute("categories", categories);
	 		List<Supplier> suppliers=supplierDao.findAll();
	 		mv.getModelMap().addAttribute("suppliers", suppliers);
	 		return mv;
	 	}
	
	@RequestMapping(value="/admin/addsupplier", method=RequestMethod.GET)
	public ModelAndView viewAddSupplier(){
		ModelAndView mv=new ModelAndView("add","command",new Supplier());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
		
	@RequestMapping(value="/admin/addsupplier", method=RequestMethod.POST)
	 public ModelAndView addSupplier(@ModelAttribute("supplier") Supplier supplier){
		supplierDao.save(supplier);
		ModelAndView mv=new ModelAndView("supplier");
		return mv;
	 }	
	
	
	/*@RequestMapping(value="/delete", method=RequestMethod.GET)
	public ModelAndView viewDelete(){
		ModelAndView mv=new ModelAndView("delete","command",new ProductModel());
		return mv;
}*/
	@RequestMapping(value="/admin/deleteproduct", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int pid){
		ModelAndView mv=new ModelAndView("redirect:supplier","command", new ProductModel());
		productDao.delete(pid);
		mv.getModelMap().addAttribute("supplier", productDao.findAll());
		return mv;
	}	
	/*
	@RequestMapping(value="/deleteproduct", method=RequestMethod.POST)
	 public ModelAndView deleteProduct(HttpServletRequest request, HttpServletResponse response){
		int pid=Integer.parseInt(request.getParameter("id"));
		 		//Product product=productDao.delete(id);	
		 		productDao.delete(pid);
		 		ModelAndView mv=new ModelAndView("product");
		 		return mv;
	 }
	*/
	/*@RequestMapping(value="/supplier" , method=RequestMethod.GET)
	public ModelAndView category() {
		ModelAndView mv=new ModelAndView ("suplier");
		List<Category> category=categoryDao.findAll();

		mv.getModelMap().addAttribute("category", category);

		return mv;
	}
	
	@RequestMapping(value="/suplier" , method=RequestMethod.POST)
	public ModelAndView viewCategory() {
		ModelAndView mv=new ModelAndView ("category");
		List<Category> category=categoryDao.findAll();

		mv.getModelMap().addAttribute("category", category);

		return mv;
	}
	*/
	
	
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public ModelAndView getProductById(Model model,@RequestParam("id") int pid) {
		ModelAndView mv=new ModelAndView("view");
		ProductModel product =productDao.findById(pid);
		mv.getModelMap().addAttribute("product", product);
		return mv;
	}
	
	/*@RequestMapping(value="/add", method=RequestMethod.GET)
	public ModelAndView viewAdd(){
		ModelAndView mv=new ModelAndView("add");
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}	*/
	@RequestMapping(value="/admin/updatesupplier" , method=RequestMethod.GET) 
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int id){
 		ModelAndView mv=new ModelAndView("redirect:update");
 		Supplier supplier=supplierDao.findById(id);
  		mv.getModelMap().addAttribute("supplier", supplier);
  		return mv;	
	}
	@RequestMapping(value="/admin/updatesupplier", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateSupplier(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:supplier");
		Supplier supplier=new Supplier();
		supplier.setId(Integer.parseInt(request.getParameter("id")));
		supplier.setName(request.getParameter("name"));
		supplier.setAddress(request.getParameter("Address"));
		supplier.setEmail(request.getParameter("Email"));
		supplier.setContact(request.getParameter("Contact"));

		supplierDao.update(supplier);
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		return mv;
		
	 }
	@RequestMapping(value="/admin/deletesupplier", method=RequestMethod.GET)
	public ModelAndView viewDelete(@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("redirect:supplier","command",new Category());
		supplierDao.delete(id);
		mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
		return mv;
}
}


