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
public class CategoryController {
	@Autowired
	private ProductDao productDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private SupplierDao supplierDao;

/*	@RequestMapping(value="/category" , method=RequestMethod.GET)
	public ModelAndView category() {
		ModelAndView mv=new ModelAndView ("category");
		List<Category> category=categoryDao.findAll();

		mv.getModelMap().addAttribute("category", category);

		return mv;
	}
	
	@RequestMapping(value="/category" , method=RequestMethod.POST)
	public ModelAndView viewCategory() {
		ModelAndView mv=new ModelAndView ("category");
		List<Category> category=categoryDao.findAll();

		mv.getModelMap().addAttribute("category", category);

		return mv;
	}*/
	@RequestMapping(value="/updatecategory" , method=RequestMethod.GET) 
	public ModelAndView viewUpdateCategory(Model model,@RequestParam("id") int cid){
 		ModelAndView mv=new ModelAndView("update");
 		Category category=categoryDao.findById(cid);
  		mv.getModelMap().addAttribute("category", category);
  		return mv;	
	}
	@RequestMapping(value="/updatecategory", method=RequestMethod.POST)
	// public ModelAndView updateProduct(@ModelAttribute("product") Product product){
	public ModelAndView updateCategory(HttpServletRequest request, HttpServletResponse response){
		ModelAndView mv=new ModelAndView("redirect:supplier");
		Category category=new Category();
		category.setCid(Integer.parseInt(request.getParameter("cid")));
		category.setCname(request.getParameter("cname"));
		category.setCdesc(request.getParameter("cdesc"));
		categoryDao.update(category);
		mv.getModelMap().addAttribute("category", categoryDao.findAll());
		return mv;
		
	 }
	@RequestMapping(value="/deletecategory", method=RequestMethod.GET)
	public ModelAndView viewDelete(@RequestParam("id") int cid){
		ModelAndView mv=new ModelAndView("supplier","command",new Category());
		categoryDao.delete(cid);
		mv.getModelMap().addAttribute("category", categoryDao.findAll());
		return mv;
}
	@RequestMapping(value="/addcategory", method=RequestMethod.GET)
	public ModelAndView viewAddCategory(){
		ModelAndView mv=new ModelAndView("add","command",new Category());
		//ModelAndView mv1=new ModelAndView("add","command",new Category());
		return mv;
		
}
	@RequestMapping(value="/addcategory", method=RequestMethod.POST)
	 public ModelAndView addCategory(@ModelAttribute("category") Category category){
		categoryDao.save(category);
		ModelAndView mv=new ModelAndView("redirect:supplier");
		return mv;
	 
}

	/*@RequestMapping(value="/delete", method=RequestMethod.GET)
	public ModelAndView delete(@RequestParam("id") int id){
		ModelAndView mv=new ModelAndView("supplier","command", new ProductModel());
		productDao.delete(id);
		mv.getModelMap().addAttribute("supplier", productDao.findAll());
		return mv;
	}	*/
}
