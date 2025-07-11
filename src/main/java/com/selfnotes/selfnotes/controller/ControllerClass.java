package com.selfnotes.selfnotes.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.HandlerMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ControllerClass {
	private String fileLocation = "../../../notepad-store.txt";

	@GetMapping(value = { "home", "/" })
	public String getHome() {
		return "home";
	}

	@GetMapping("java")
	public ModelAndView getJava() throws IOException {
		List<String> files = listFilesUsingJavaIO("/static/images/java_img/collection_framework");

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("java");
		return model;
	}

	@GetMapping("collection-framework")
	public ModelAndView getCollectionFramework() throws IOException {

		String collectionfmLocate = "/static/images/java_img/collection_framework";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("file-operations")
	public ModelAndView getFileOps() throws IOException {

		String collectionfmLocate = "/static/images/java_img/fileio";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("java-strings")
	public ModelAndView getJavaStrings() throws IOException {

		String collectionfmLocate = "/static/images/java_img/javastrings";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("java8")
	public ModelAndView getJava8() throws IOException {

		String collectionfmLocate = "/static/images/java_img/java8";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("updated/**")
	public ModelAndView getUploadedFiles(HttpServletRequest request) throws IOException {
		
	   String handlerPath= request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE).toString();
		
	  // System.out.println(handlerPath);
		ClassPathResource resource = new ClassPathResource("static"+handlerPath.replace("updated", "uploads"));
		ModelAndView model = new ModelAndView();
				
		if(!resource.getFile().isFile()) {
			List<String> files =Arrays.stream(resource.getFile().list()).map(e->e.endsWith(".txt")?(handlerPath+"/"+e).replace("updated", "uploads"):handlerPath+"/"+e)
					.collect(Collectors.toList());
			//System.out.println(files);
			model.addObject("notes_file", files);
		}
		
		model.setViewName("success");
		return model;
	}

	@GetMapping("jdbc")
	public ModelAndView getJdbc() throws IOException {

		String collectionfmLocate = "/static/images/java_img/jdbcimg";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("springboot")
	public ModelAndView getSpringfw() throws IOException {

		String collectionfmLocate = "/static/images/java_img/springfw";

		List<String> files = listFilesUsingJavaIO(collectionfmLocate);

		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);

		model.setViewName("image-load");
		return model;
	}

	@GetMapping("orm")
	public ModelAndView getOrm() throws IOException {
		String collectionfmLocate = "/static/images/java_img/orm";
		List<String> files = listFilesUsingJavaIO(collectionfmLocate);
		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);
		model.setViewName("image-load");
		return model;
	}

	@GetMapping("multithreading")
	public ModelAndView getMultithreading() throws IOException {
		String collectionfmLocate = "/static/images/java_img/multithreading";
		List<String> files = listFilesUsingJavaIO(collectionfmLocate);
		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);
		model.setViewName("image-load");
		return model;
	}

	@GetMapping("opps")
	public ModelAndView getOOps() throws IOException {
		String collectionfmLocate = "/static/images/java_img/oops";
		List<String> files = listFilesUsingJavaIO(collectionfmLocate);
		ModelAndView model = new ModelAndView();
		model.addObject("notes_file", files);
		model.setViewName("image-load");
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

	@GetMapping("kafka")
	public String getKafka() {
		return "kafka";
	}

	@GetMapping("add-notes")
	public String getNotes() {
		return "notepad";
	}

	@PostMapping("/save-notes")
	public ModelAndView saveNotes(@RequestParam String notesdata) throws IOException {

		File yourFile = new File(fileLocation);
		yourFile.createNewFile();
		FileWriter fileWriter = new FileWriter(fileLocation, true);

		fileWriter.write(notesdata);
		fileWriter.flush();
		fileWriter.close();

		return new ModelAndView("notes-content");
	}

	@GetMapping("/read")
	public ModelAndView readNotes() throws FileNotFoundException, IOException {

		FileReader fileReader = new FileReader(fileLocation);

		Scanner sc = new Scanner(fileReader);
		sc.useDelimiter("\\Z");

		ModelAndView model = new ModelAndView();

		model.addObject("notescontent", sc.next());
		sc.close();
		fileReader.close();
		model.setViewName("notes-content");

		return model;
	}

	public List<String> listFilesUsingJavaIO(String dir) throws IOException {
		String imageRetrieveLoc = dir.replace("/static", "");
		return Stream.of(new ClassPathResource(dir).getFile().listFiles()).filter(file -> !file.isDirectory())
				.map(file -> imageRetrieveLoc + "/" + file.getName()).sorted((e1, e2) -> e1.compareTo(e2))
				.collect(Collectors.toList());
	}

}
