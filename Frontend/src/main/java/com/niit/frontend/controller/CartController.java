package com.niit.frontend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

	@RequestMapping("/myCart/addToCart")
	public String addcart()
	
	{
		return "Cart";
	}
	
}
