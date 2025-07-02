package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A06_FileUploadService {
	
	@Value("${user.upload3}")
	private String path;
		
	public String upload(MultipartFile mf) {
		String fname = mf.getOriginalFilename();
		File f = new File(path,fname);
		String msg = "";
		try {
			mf.transferTo(f);
			System.out.println("파일 등록 성공");
			msg = "파일 등록 성공";
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			msg = "[에러]상태:"+ e.getMessage();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			msg = "[에러]업로드:"+ e.getMessage();
		} catch (Exception e) {
			msg = "[에러]일반:"+ e.getMessage();
		}		
		return msg;
	}
}
