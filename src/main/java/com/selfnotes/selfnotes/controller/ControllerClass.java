package com.selfnotes.selfnotes.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ControllerClass {
	
	@GetMapping("/")
	public String getHome() {
		return "home";
	}

}
