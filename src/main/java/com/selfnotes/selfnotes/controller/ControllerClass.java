package com.selfnotes.selfnotes.controller;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ControllerClass {
	
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
		File notesFile=new File("src/main/resources/notepad-store.txt");
		FileWriter fileWriter =new FileWriter(notesFile,true);
		
		fileWriter.write(notesdata);
		fileWriter.close();
		return "success";
	}
	
}
