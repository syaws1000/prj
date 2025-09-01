package web.com.springweb.a05_ajax.a02_service;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.springweb.a05_ajax.a03_dao.A20_MusicDao;
import web.com.springweb.a05_ajax.dto.MusicAlbums;

@Service
public class A20_MusicService {
	@Autowired(required=false)
	private A20_MusicDao dao;
	// price
	public List<MusicAlbums> getMusicAlums(MusicAlbums sch) {
		// 초기화면에서 null 시, "" 처리
		if(sch.getAlbumTitle()==null) sch.setAlbumTitle("");
		if(sch.getArtist()==null) sch.setArtist("");
		if(sch.getGenre()==null) sch.setGenre("");
		// 키워드 검색될 수 있게 처리 %%
		sch.setAlbumTitle("%"+sch.getAlbumTitle()+"%");
		sch.setArtist("%"+sch.getArtist()+"%");
		sch.setGenre("%"+sch.getGenre()+"%");
		
		
		return dao.getMusicAlums(sch);
	}
	
	public String insertAlbum(MusicAlbums ins) {
		
		return dao.insertAlbum(ins)>0?"등록성공":"등록실패";
	}
	public MusicAlbums getAlbum(int albumId) {
		return dao.getAlbum(albumId);
	}
	
	public String updateAlbum(MusicAlbums upt) {
		return dao.updateAlbum(upt)>0?"수정성공":"수정실패";
	}

	public String deleteAlbum(int albumId) {
		return dao.deleteAlbum(albumId)>0?"삭제성공":"삭제실패";
	}
	
}
