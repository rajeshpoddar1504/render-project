package com.selfnotes.selfnotes.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControllerClass {
	@Autowired
	ResourceLoader resourceLoader;
	
	@GetMapping("home")
	public String getHome() {
		return "home";
	}
	@GetMapping("java")
	public String getJava() {
		return "java";
	}
	@GetMapping("git")
	public String getGit() {
		return "git";
	}
	@GetMapping("microservices")
	public String getMicroservices() {
		return "microservices";
	}
	@GetMapping("springboot")
	public String getSpringboot() {
		return "springboot";
	}
	@GetMapping("html")
	public String getHtml() {
		return "html";
	}
	@GetMapping("css")
	public String getCss() {
		return "css";
	}
	@GetMapping("database")
	public String getDatabase() {
		return "database";
	}
	
	@GetMapping("add-notes")
	public String getNotes() {
		return "notepad";
		
	}
	@PostMapping("/save-notes")
	public String saveNotes(@RequestParam String notesdata) throws IOException {
		
		Resource resource = resourceLoader.getResource("classpath:notepad-store.txt"); 
		/*
		 * URL resource = getClass().getClassLoader().getResource("notepad-store.txt");
		 */
		/* File notesFile=new File(resource.getFile()); */
		FileWriter fileWriter =new FileWriter(resource.getFile(),true);
		
		fileWriter.write(notesdata);
		fileWriter.close();
		return "success";
	}
	
}
