package web.com.board.config;

import java.io.IOException;
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
public class FileDownLoadController {

	// 초기에 업로드한 경로를 파일다운로드 경로로 설정.
	@Value("${user.upload}")
	private String path;
	
	// http://localhost:5051/download?fileName=churn_data.csv
	@GetMapping("download")
	public ResponseEntity<Resource> downloadFile(@RequestParam("fileName") String fileName ) throws IOException{
		// 물리적으로 저장된 파일을 stream형식의 메모리를 만들어 처리함..
		// Path : 기존 File객체보다 효과적으로 파일을 처리해주는 객체 
		// 다운로드할 파일의 경로로 파일을 설정
		Path filePath = Paths.get(path).resolve(fileName).normalize();
		// 파일 시스템의 리소스를 생성. 이는 다운로드할 파일을 나타냅니다.
		Resource resource = new FileSystemResource(filePath);
		// 파일의 존재 여부 확인
		if(!resource.exists()) { // 요청한 파일이 조재하지 않으면 404 Not Found응답을 처리
			return ResponseEntity.notFound().build();
		}
		// 파일 타입 결정 - 파일의 형식(gif, jpg, doc 등 여러 유형에 따른 파일을 전송할 타입을 지정)
		String contentType = Files.probeContentType(filePath); // IO 발생예외가 나올 때, 웹서버에 전달하여 처리 하도록
		if(contentType==null) {
			contentType="application/octet-stream"; // 8진수 stream 기본 설정하여 파일으로 전송 타입형식 지정..
		}
		// throws IOException
		return ResponseEntity.ok()   // HTTP 200 ok 즉, 응답이 정상적으로 처리될 때 처리할 내용
				.contentType(MediaType.parseMediaType(contentType)) // 앞에서 지정한 파일의 MINE 타입을 설정
				.header(HttpHeaders.CONTENT_DISPOSITION, "attachment; fileName=\""+fileName+"\"") // 다운로드할 파일 지정
				//     fileName="파일명"
				// fileName=\""+fileName+"\"
				.body(resource);// 마지막으로 다운로드할 파일의 리소스를 응답본문에 설정..
		
	}
	
}
