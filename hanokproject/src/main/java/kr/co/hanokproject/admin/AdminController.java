package kr.co.hanokproject.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.hanok.owner.OwnerService;

@Controller
public class AdminController {
	@Autowired
	private AdminService service;		
	
}