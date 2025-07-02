package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A07_FileUploadService {

	@Value("${user.upload4}")
	private String path;
	
	public String upload4(MultipartFile mf) {
		String msg = "";
		String fname = mf.getOriginalFilename();
		File f = new File(path,fname);
		
		try {
			mf.transferTo(f);
			msg = "파일등록 성공";
		} catch (IllegalStateException e) {
			msg = "[상태에러]"+e.getMessage();
		} catch (IOException e) {
			msg = "[IO에러]"+e.getMessage();
		} catch (Exception e) {
			msg = "[기타에러]"+e.getMessage();
		}
		return msg;
	}
}
