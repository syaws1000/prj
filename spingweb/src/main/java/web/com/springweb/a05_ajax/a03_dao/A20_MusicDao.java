package web.com.springweb.a05_ajax.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import web.com.springweb.a05_ajax.dto.MusicAlbums;

@Mapper
public interface A20_MusicDao {
	
	@Select("SELECT ALBUM_ID, ALBUM_TITLE, ARTIST, GENRE \r\n"
			+ "FROM MUSIC_ALBUMS \r\n"
			+ "WHERE ALBUM_TITLE LIKE #{albumTitle} AND ARTIST LIKE #{artist} AND GENRE LIKE #{genre} "
			+ "ORDER BY ALBUM_ID DESC")
	List<MusicAlbums> getMusicAlums(MusicAlbums sch);
	
	@Insert("INSERT INTO music_albums VALUES (album_seq.nextval, "
			+ "#{albumTitle}, #{artist}, #{releaseDate},#{genre}, #{price})")
	int insertAlbum(MusicAlbums ins);
	
}
