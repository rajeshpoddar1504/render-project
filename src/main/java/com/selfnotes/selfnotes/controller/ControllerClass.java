package com.selfnotes.selfnotes.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.Scanner;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView saveNotes(@RequestParam String notesdata) throws IOException {
		
		Resource resource = new ClassPathResource("notepad-store.txt") ;
		File file=resource.getFile();
				
		FileWriter fileWriter =new FileWriter(file,true);
		
		fileWriter.write(notesdata);
		fileWriter.close();
		 
		/*
		 * FileReader fileReader=new FileReader(file);
		 * 
		 * Scanner sc = new Scanner(fileReader); sc.useDelimiter("\\Z");
		 * 
		 * ModelAndView model=new ModelAndView(); fileReader.close();
		 * 
		 * model.addObject("notescontent",sc.next());
		 * 
		 * model.setViewName("notes-content");
		 */
		
		return readNotes();
	}
	
	@GetMapping("/read")
	public ModelAndView readNotes() throws FileNotFoundException, IOException {
		Resource resource = new ClassPathResource("notepad-store.txt") ;
		File file=resource.getFile();
		FileReader fileReader=new FileReader(file);
		
		Scanner sc = new Scanner(fileReader);
        sc.useDelimiter("\\Z");
        
		ModelAndView model=new ModelAndView();
		
		model.addObject("notescontent",sc.next());
		
		model.setViewName("notes-content");
		
		return model;
	}
	
}
