package kr.co.hanokproject.customer;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService service;	
	
}