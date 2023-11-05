package com.selfnotes.selfnotes.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.List;
import java.util.Scanner;
import java.util.Set;
import java.util.stream.Stream;
import java.util.stream.Collectors;
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
	private String fileLocation="../../../notepad-store.txt";
	
	@GetMapping("home")
	public String getHome() {
		return "home";
	}
	@GetMapping("java")
	public ModelAndView getJava() throws IOException {
		List<String>  files=listFilesUsingJavaIO("/static/images/java_img/collection_framework");
		
		ModelAndView model=new ModelAndView();
		model.addObject("notes_file", files);
		
		model.setViewName("java");	
		return model;
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
		
				
		File yourFile = new File(fileLocation);
		yourFile.createNewFile(); 
		// if file already exists will do nothing 
		FileWriter fileWriter =new FileWriter(fileLocation,true);
		
		 fileWriter.write(notesdata);
		 fileWriter.flush(); 
		 fileWriter.close();  
		 		
		return new ModelAndView("notes-content");
	}
	
	@GetMapping("/read")
	public ModelAndView readNotes() throws FileNotFoundException, IOException {
		
		FileReader fileReader=new FileReader(fileLocation);
		
		Scanner sc = new Scanner(fileReader);
        sc.useDelimiter("\\Z");
        
        
		ModelAndView model=new ModelAndView();
		
		model.addObject("notescontent",sc.next());
		sc.close();
		fileReader.close();
		model.setViewName("notes-content");
		
		return model;
	}
	public List<String> listFilesUsingJavaIO(String dir) throws IOException {
	
		  return Stream.of(new ClassPathResource(dir).getFile().listFiles())
	      .filter(file -> !file.isDirectory())
	      .map(File::getName)
	      .sorted((e1,e2)->e1.compareTo(e2))
	      .collect(Collectors.toList());
	}
}
