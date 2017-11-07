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
import com.games.rio.backend.model.UserModel;
@Controller
public class ProductController {
			@Autowired
			private ProductDao productDao;
			@Autowired
			private CategoryDao categoryDao;
			@Autowired
			private SupplierDao supplierDao;
		
		
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
			
			
			

			@RequestMapping(value="admin/add" , method=RequestMethod.GET)
			public ModelAndView viewAdd() {
				ModelAndView mv=new ModelAndView ("add","command",new ProductModel());
				return mv;
			}
			@RequestMapping(value="admin/update" , method=RequestMethod.GET)
			public ModelAndView viewupdate() {
				ModelAndView mv=new ModelAndView ("update");
				return mv;
			}
			
			@RequestMapping(value="admin/updateproduct", method=RequestMethod.GET)
			public ModelAndView viewUpdate(Model model,@RequestParam("id") int pid){
				ModelAndView mv=new ModelAndView("update");
				ProductModel product=productDao.findById(pid);
				mv.getModelMap().addAttribute("product", product);
				mv.getModelMap().addAttribute("categories", categoryDao.findAll());
				mv.getModelMap().addAttribute("supplier", supplierDao.findAll());
				return mv;
		}
			
			
			@RequestMapping(value="admin/updateproduct", method=RequestMethod.POST)
			// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
			public ModelAndView updateProduct(HttpServletRequest request, HttpServletResponse response){
				ModelAndView mv=new ModelAndView("redirect: supplier");
				Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cat")));
				Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
				ProductModel product =new ProductModel();
				product.setPid(Integer.parseInt(request.getParameter("pid")));
				product.setPname(request.getParameter("pname"));
				product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
				product.setPdescrip(request.getParameter("pdescrip"));
				product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
				product.setPimage(request.getParameter("pimage"));
				product.setCat(category);
				product.setSid(supplier);
				productDao.update(product);
				mv.getModelMap().addAttribute("supplier", productDao.findAll());
			
				return mv;
				
			 }
			@RequestMapping(value="/addproduct", method=RequestMethod.GET)
		  	public ModelAndView addProduct(){
				ModelAndView mv=new ModelAndView ("add","command",new ProductModel());
				List<ProductModel> products=productDao.findAll();
				mv.getModelMap().addAttribute("categories", categoryDao.findAll());
				mv.getModelMap().addAttribute("supplier", supplierDao.findAll());

				mv.getModelMap().addAttribute("products", products);
				return mv;
			}
			
		
			@RequestMapping(value="/addproduct", method=RequestMethod.POST)
			// public ModelAndView addProduct(@ModelAttribute("product") Product product, HttpServletRequest request){
			 public ModelAndView addProduct(HttpServletRequest request, HttpServletResponse response){
				Category category=categoryDao.findById(Integer.parseInt(request.getParameter("cat")));

				Supplier supplier=supplierDao.findById(Integer.parseInt(request.getParameter("sid")));
				ProductModel product =new ProductModel();
				product.setPname(request.getParameter("pname"));
				product.setPquantity(Integer.parseInt(request.getParameter("pquantity")));
				product.setPdescrip(request.getParameter("pdescrip"));
				product.setPprice(Float.parseFloat(request.getParameter("pprice"))) ;
				product.setPimage(request.getParameter("pimage"));
				product.setCat(category);
				product.setSid(supplier);
				productDao.save(product);
				ModelAndView mv=new ModelAndView("redirect:supplier");
				return mv;
			 }
		
			
}

