package com.shop.myapp.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.myapp.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	
}
