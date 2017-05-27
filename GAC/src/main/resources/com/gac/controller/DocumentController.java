package com.gac.controller;

import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.gac.utility.FileUpload;


@Controller
@RequestMapping("/document")
public class DocumentController {
	
	FileUpload ufile;
	
	
	@RequestMapping(value="/uploadFile", method = RequestMethod.POST)
	public String uploadFile(MultipartHttpServletRequest request, HttpServletResponse response){
		
		System.out.println("This is the upload File .....");
		
		 //0. notice, we have used MultipartHttpServletRequest
		 
	     //1. get the files from the request object
	     Iterator<String> itr =  request.getFileNames();
	 
	     MultipartFile mpf = request.getFile(itr.next());
	     System.out.println(mpf.getOriginalFilename() +" uploaded!");
	 
	     try {
	                //just temporary save file info into ufile
	        ufile.length = mpf.getBytes().length;
	        ufile.bytes= mpf.getBytes();
	        ufile.type = mpf.getContentType();
	        ufile.name = mpf.getOriginalFilename();
	 
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
		
		return "";
	}

}
