package web.com.board.backend;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class A02_Service {
	@Autowired(required = false)
	private A03_Dao dao;
	
	public List<Announce> getAnnounceList(AnnounceSch sch){
		if(sch.getTitle()==null) sch.setTitle("");
		if(sch.getAuthor()==null) sch.setAuthor("");
		sch.setTitle("%"+sch.getTitle()+"%");
		sch.setAuthor("%"+sch.getAuthor()+"%");
		return dao.getAnnounceList(sch);
	}
}
