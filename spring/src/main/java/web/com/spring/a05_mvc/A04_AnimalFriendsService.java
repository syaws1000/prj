package web.com.spring.a05_mvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import web.com.spring.vo.AnimalFriend;

@Service
public class A04_AnimalFriendsService {
	
	@Autowired(required=false)
	private A04_AnimalFriendsDao dao;

	public AnimalFriend getAnmialFriend(String friendshipType) {
		
		return dao.getAnmialFriend(friendshipType);
	}
	
	
}
