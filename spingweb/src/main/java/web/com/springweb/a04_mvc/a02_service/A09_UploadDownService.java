package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A09_UploadDownService {
	
	@Value("${user.upload4}")
	private String path;
	public String upload4(List<MultipartFile> mpfs) {
		String msg = "파일이 ";
		try {
			int cnt = 0;
			for(MultipartFile mf:mpfs) {
				String fname = mf.getOriginalFilename();
				File f = new File(path, fname);
				mf.transferTo(f);	
				cnt++;
			}
			msg = cnt+"건 등록";
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return msg;
	}
	// 특정 디렉토리(경로)에 있는 파일명을 List<String>에 담기 처리..
	public List<String> getFnames(){
		List<String> fnames = new ArrayList<String>();
		File dir = new File(path);  // 경로 설정..
		// dir.listFiles() 해당 경로에 있는 파일/폴드를 리스트..
		for(File file:dir.listFiles()) {
			if(file.isFile()) { 
				fnames.add(file.getName());
			}
		}
		return fnames;
	}
}
