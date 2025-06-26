package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A05_FileuploadService {
	
	
	@Value("${user.upload2}")
	private String path;

	public String fileUploads(MultipartFile[] mfs) {
		String msg = "파일업로드 성공";
			try {
				int cnt = 0;
				for(MultipartFile mf:mfs) {
					File f = new File(path, mf.getOriginalFilename());
					cnt++;
					mf.transferTo(f);
				}
				msg+=" "+cnt+"개 업로드!";
			} catch (IllegalStateException e) {
				msg = "[에러1 상태오류]"+e.getMessage();
			} catch (IOException e) {
				msg = "[에러2 파일업로드오류]"+e.getMessage();
			} catch (Exception e) {
				msg = "[에러3 일반오류]"+e.getMessage();
			}
		
		return msg;
	}
}
