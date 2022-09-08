package org.coding.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import org.coding.model.AttachVO;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {
	
	// ajax 이용한 파일 업로드
	@RequestMapping(value = "/uploadAjax", method = RequestMethod.GET)
	public void uploadAjax() {
		
	}
	
	// 1. 년/월/일 형태의 폴더를 생성하는 메서드 선언
	private String getFolder() {
		
		// 현재날짜 추출 (Thu Aug 24 09:23:12 KST 2022)
		Date date = new Date();
		// import java.util.Date;
		//System.out.println(date);
		
		// 2022-08-24 로 포맷하기
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		// 현재 날짜와 날짜 형식을 String 타입으로 연결
		String str = sdf.format(date);  // 2022-08-24
		//System.out.println(str);
		
		// 2022-08-24 -> 2022\08\24 로 변경 (찾아바꾸기:replace)
		return str.replace("-", "\\");
	}
	
	// 2. 내가 올리고자 하는 파일이 이미지 파일인지 아닌지 구분하는 메서드 선언
	//    내가 올린 파일이 저장된 경로 : File saveFile -> 타입은 File임
	//       반환타입        메소드명      (타입  변수명)
	private boolean checkImgType(File file) {
		// probeContentType (파일경로) : 파일 경로에 있는 파일 타입을 알아내는 메서드
		// String contentType = Files.probeContentType(file.toPath()); 		
		try {
			String contentType = Files.probeContentType(file.toPath()); 
			System.out.println("contentType = "+contentType);
			
			//                  불리언 타입 : 파일 타입이 image이면 true, 그 이외에는 false
			return contentType.startsWith("image");  // 참일때 반환
				
		}catch(IOException e){
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;  // 거짓일때 반환
	}
	
	
	@RequestMapping(value = "/uploadAjaxAction", method = RequestMethod.POST)
	public ResponseEntity<ArrayList<AttachVO>> uploadAjaxPost(MultipartFile[] uploadFile) {
		System.out.println("uploadAjaxAction controller");
		// AttachFileVO 클래스 포함
		ArrayList<AttachVO> list = new ArrayList<>();
		
		// 폴더 경로 설정
		String uploadFolder="D:\\upload";
		
		// 1. 서버 업로드 경로와 getFolder 메서드의 날짜 문자열을 연결해 하나의 폴더 생성
		File uploadPath = new File(uploadFolder,getFolder());
		
		// 1. 폴더 생성 ("D:\\upload\\현재날짜")
		if(uploadPath.exists()==false) {  // uploadPath가 존재하지 않으면,
			uploadPath.mkdirs();
		}
		
		// for(배열명:변수명)		
		for(MultipartFile multipartFile : uploadFile) {
			
			// AttachFileVO 클래스의 새로운 주소를 반복적으로 생성하여
			AttachVO attachVO = new AttachVO();
			// ArrayList 저장
						
			System.out.println(multipartFile.getOriginalFilename());
			System.out.println(multipartFile.getSize());
			
			// 파일저장
			// 실제 파일명 (multipartFile.getOriginalFilename())
			// 1. UUID 적용 (UUID_multipartFile.getOriginalFilename())
			UUID uuid = UUID.randomUUID();
			System.out.println("UUID = "+uuid.toString());  // String 타입으로 형변환
			
			// AttachFileVO 의 uploadPath 변수에 저장
			attachVO.setUploadPath(getFolder());
			// AttachFileVO 의 fileName 변수에 저장
			attachVO.setFileName(multipartFile.getOriginalFilename());
			// AttachFileVO 의 uuid 변수에 저장
			attachVO.setUuid(uuid.toString());
			// AttachFileVO 의 img 변수에 저장 -> checkImgType 을 써야 하므로 if문 밑에 써야 함
			
			
			//                          어느 폴더에,  어떤 파일이름으로     
			//                        (D:\\upload),  (a.jfif)
			//File saveFile = new File(uploadFolder,multipartFile.getOriginalFilename());
			//             (D:\\upload\\현재날짜),  (UUID_a.jfif)
			File saveFile = new File(uploadPath,uuid.toString()+"_"+multipartFile.getOriginalFilename());
			// transferTo() 메소드에 예외가 있으면
			try {                     
				multipartFile.transferTo(saveFile);  // 서버로 원본파일 전송
				
				// 2. 내가 서버에 올리고자 하는 파일이 이미지이면 (전제조건),
				if(checkImgType(saveFile)) {  // checkImgType 메서드 시작
					// AttachFileVO 의 img 변수에 저장
					attachVO.setImg(true);
					
					// 파일 생성                                                                                               
					FileOutputStream thumnail = new FileOutputStream(new File(uploadPath,"s_"+uuid.toString()+"_"+multipartFile.getOriginalFilename()));
				
					// 섬네일형식의 파일 생성                                                                                                      넓이,높이
					Thumbnailator.createThumbnail(multipartFile.getInputStream(),thumnail,100,100);
					thumnail.close();
				} // checkImgType 메서드 끝
				
				// AttachFileVO 에 저장된 데이터를 배열에 추가 (add 메소드)
				list.add(attachVO);
							
			}catch(Exception e) {  // 예외를 처리하라.
				System.out.println(e.getMessage());
			}
		}  // for문 끝
		
		return new ResponseEntity<>(list,HttpStatus.OK);  // 통신상태가 원활하면 배열 list 를 ajax에 보내라
	}  // uploadAjax 끝
	
	
	// 이미지 주소 생성  (localhost:8080/display?fileName=a.jfif)
	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getFile(String fileName) { 
		System.out.println(fileName);
		
		File file = new File("D:\\upload\\"+fileName);
		
		ResponseEntity<byte[]> result = null;
		
		// headers 변수 생성 -> 이미지파일인지 아닌지 검사 위해
		HttpHeaders headers = new HttpHeaders();
		
		try {  
			headers.add("Content-Type", Files.probeContentType(file.toPath()));
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),
					headers,HttpStatus.OK);
		}catch(Exception e){
			e.printStackTrace();
		}
		return result;
	}  // getFile 메서드 끝
	
	
	// 다운로드 주소 생성  (localhost:8080/download?fileName=a.jfif)
	@RequestMapping(value = "/download", method = RequestMethod.GET)
	public ResponseEntity<Resource> downloadFile(String fileName) { 
		// import org.springframework.core.io.Resource;
		
		Resource resource = new FileSystemResource("D:\\upload\\"+fileName);
		
		// 다운로드 시 파일의 이름을 처리
		String resourceName = resource.getFilename();
		HttpHeaders headers = new HttpHeaders();
		
		try {  
			// 다운로드 파일 이름이 한글일 때 깨지지 않게 하기 위한 설정
			//                                                                                         한글일 때   ,  한글 아닐 때
			headers.add("Content-Disposition", "attachment;filename="+new String(resourceName.getBytes("UTF-8"),"ISO-8859-1"));

		}catch(Exception e){
			e.printStackTrace();
		}
		return new ResponseEntity<>(resource,headers,HttpStatus.OK);		
	}  // downloadFile 메서드 끝

}
