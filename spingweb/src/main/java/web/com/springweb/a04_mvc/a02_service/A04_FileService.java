package web.com.springweb.a04_mvc.a02_service;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class A04_FileService {
	
	// 파일경로(공통)
	@Value("${user.upload}")
	private String path; // 해당 파일 경로 위치가 path에 할당.
	
	public String upload(MultipartFile mfs) {
		String msg = "업로드 성공";
		// MultipartFile : 네트워크을 통해서 전송하는 파일(메모리)
		// File : 물리적으로 특정 위치에 저장하는 파일
		// 1. 파일(물리적)  경로, 파일  ==> 물리적 특정 위치에 저장 객체 생성..
		File upFile = new File(path,mfs.getOriginalFilename());
		// 2. MultipartFile  ==> File 변환처리..
		
		try {
			mfs.transferTo(upFile);
		} catch (IllegalStateException e) {
			msg = "[예외발생1]:상태문제-"+e.getMessage();
			System.out.println(e.getMessage());
		} catch (IOException e) {
			msg = "[예외발생2]:파일업로드-"+e.getMessage();
			System.out.println(e.getMessage());
		} catch (Exception e) {
			msg = "[예외발생3]:기타예외-"+e.getMessage();
			System.out.println(e.getMessage());
		} 
		
		// io 발생 필수예외 처리..
		
		
		
		
		
		return msg;
	}
	public List<String> getFnames(){
		List<String> fnames = new ArrayList<String>();
		File dir = new File(path); // 파일 객체는 경로 정보도 설정할 수 있다.
		File[] files = dir.listFiles(); // 해당 경로에 있는 파일 객체를 배열로 설정..
		if(files!=null) {
			for(File file:files) {
				if(file.isFile()) { // 파일인지 여부를 확인( 경로로 처리될 수 있으므로)
					fnames.add(file.getName()); // 파일 정보를 추가하여 처리된다..
				}
			}
		}
		
		return fnames;
	}
	
	

}
