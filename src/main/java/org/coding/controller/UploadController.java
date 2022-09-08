package org.coding.controller;

import java.io.File;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

public class UploadController {
	
	@RequestMapping(value ="/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax() {
		
	}
	@RequestMapping(value ="/mypage2", method = RequestMethod.POST)
	public void uploadAjaxPost(MultipartFile[] uploadFile) {
		String uploadFolder="C:\\upload";
		
		for(MultipartFile multipartFile : uploadFile) {
			
			System.out.println(multipartFile.getOriginalFilename());
			System.out.println(multipartFile.getSize());
			
			
			File saveFile = new File(uploadFolder, multipartFile.getOriginalFilename());
			
			try {
				
				multipartFile.transferTo(saveFile);
			} catch(Exception e) {
				
				System.out.println(e.getMessage());
				
			} // catch
		} // for
	}
}
