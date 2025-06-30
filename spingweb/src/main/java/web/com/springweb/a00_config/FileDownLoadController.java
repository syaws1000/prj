package web.com.springweb.a00_config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FileDownLoadController {

	// 초기에 업로드한 경로를 파일다운로드 경로로 설정.
	@Value("${user.upload}")
	private String path;
	
	// http://localhost:5050/download?fileName=churn_data.csv
	@GetMapping("download")
	public ResponseEntity<Resource> downloadFile(@RequestParam("fileName") String fileName ){
		Resource resource = null;
		
		return ResponseEntity.ok()
				.contentType(MediaType.parseMediaType(""))
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; fileName=")
				.body(resource);
	}
	
}
