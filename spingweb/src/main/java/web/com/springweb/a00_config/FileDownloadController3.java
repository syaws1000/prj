package web.com.springweb.a00_config;

import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.FileSystemResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FileDownloadController3 {
	
	// 업로된 폴드명 지정.
	@Value("${user.upload5}")
	private String path;
	
	// http://localhost:5050/download5?downFile=churn_data  (11).csv
	@GetMapping("download5")
	public ResponseEntity<Resource> downloadFile(@RequestParam("downFile") String fName) throws IOException{
		// 1. 다운로드할 파일 설정
		Path filePath = Paths.get(path).resolve(fName).normalize();
		//    물리적 파일 network를 통해서 전달할 때 사용
		Resource resource = new FileSystemResource(filePath);
		//    파일 존재 여부 확인
		if(!resource.exists()) {
			return ResponseEntity.notFound().build();
		}
		
		// 2. 파일이름 한글인 경우  UTF-8인코딩 및 중간에 공백이 들어 갈때는 encoding 문자 %20f로 처리하여
		//    처리가 가능하게 수행..
		fName = URLEncoder.encode(resource.getFilename(), StandardCharsets.UTF_8).replaceAll("\\+", "%20");// 공백처리
		//     파일 타입 결정 
		String contentType = Files.probeContentType(filePath); // IO 발생. 예외 처리..
		if(contentType==null) {
			contentType="application/octet-stream";
		}
		// 3. 파일 전달할 내용 선언 ResponseEntity.ok()
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(contentType))
				.header(HttpHeaders.CONTENT_DISPOSITION,"attachment; fileName=\""+fName+"\"")   // fileName="파일"
				.body(resource);
	}
	
	
}
