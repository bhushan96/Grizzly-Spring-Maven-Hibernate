package com.cts.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.entity.Product;
import com.cts.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
@Autowired
ProductService productService;

@GetMapping("/list")
public String listAllProducts(Model model){
	List<Product> listProduct=productService.list();
	model.addAttribute("products",listProduct);
	return "productList";
}

@GetMapping("/showForm")
public String showFormForAdd(Model model){
	Product theProduct=new Product();
	model.addAttribute("product",theProduct);
	return "ProductForm";
}

@PostMapping("/saveProduct")
public String saveAProduct(@ModelAttribute("product") Product theProduct){
	productService.saveProduct(theProduct);

	return "redirect:/product/list";
}

@GetMapping("/viewProduct")
public String viewAProduct(@RequestParam("productId") int theId,Model model){
	Product theProduct=productService.getProduct(theId);	
	model.addAttribute("product",theProduct);
	return "viewProduct";
}
@GetMapping("/deleteProduct")
public String deleteAProduct(@RequestParam("productId") int theId,Model model){
	productService.deleteProduct(theId);
	return "redirect:/product/list";
}


}
