package com.selfnotes.selfnotes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ControllerClass {
	
	@GetMapping("home")
	public String getHome() {
		return "home";
	}

	
}
