package com.niit.frontend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Backend.dao.CategoryRepository;
import com.niit.Backend.dao.ProductRepository;
import com.niit.Backend.model.Category;
import com.niit.Backend.model.Customer;
import com.niit.Backend.model.Product;

@Controller

public class HomeController {
	@Autowired
	Product product;
	@Autowired
	Category category;
	@Autowired
    CategoryRepository categoryRepository;
	@Autowired
	ProductRepository productRepository;
	@Autowired
	Customer customer;
   
		@RequestMapping("/")
		public String homePage(HttpSession httpSession,Model model)
		{
			List<Category>allCategories=categoryRepository.getAllCategory();
			httpSession.setAttribute("categoryList",allCategories);
			model.addAttribute("title","Mobideal");
			return "index";
			
			
		}
		@RequestMapping("/Home")
		public String homePage1(Model model)
		{
			model.addAttribute("title","Mobideal");
			return "index";
			
		}
		
		@RequestMapping("/adminHome")
		public String adminHome(Model model)
		{
			model.addAttribute("title","AdminHome Page");
			return "AdminHome";
			
		}
		
		@RequestMapping("/Login")
		public String LoginPage(Model model)
		{
			model.addAttribute("title","Login Page");
			return "Login";
		}
		
		@RequestMapping("/SignUp")
		public String signUpPage(Model model)
		{
			model.addAttribute("title","Sign Up");
			model.addAttribute("customer",customer);
			return "SignUp";
		}
		
		@RequestMapping("/adminCategory")
		public String Categorypage(Model model)
		{
			List<Category>allCategories=categoryRepository.getAllCategory();
			model.addAttribute("cat" , category);
			model.addAttribute("categoryList",allCategories);
			return "Category";
			
		}
		@RequestMapping("/adminProduct")
		public String productpage(Model model)
		{
			List<Product>allProduct=productRepository.getAllProduct();
			List<Category>allCategories=categoryRepository.getAllCategory();
			model.addAttribute("pro",product);
			model.addAttribute("productList",allProduct);
			model.addAttribute("categoryList",allCategories);
			return"Product";
			
		}
		
		
		
		@RequestMapping("/LogOut")
		public String logOutPage(Model model)
		{
			model.addAttribute("message","You are not logout successfully");
			return "Login";
		}
		
}
