package web.com.springweb.a03_database.vo;

import java.util.Date;

public class GameCharacter {
	private int id; 
	private String name; 
	private String game;
	private String role; 
	private String powerLevel; 
	private String introduction; 
	private Date lastUpdate;
	public GameCharacter() {
	}
	public GameCharacter(int id, String name, String game, String role, String powerLevel, String introduction,
			Date lastUpdate) {
		this.id = id;
		this.name = name;
		this.game = game;
		this.role = role;
		this.powerLevel = powerLevel;
		this.introduction = introduction;
		this.lastUpdate = lastUpdate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGame() {
		return game;
	}
	public void setGame(String game) {
		this.game = game;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getPowerLevel() {
		return powerLevel;
	}
	public void setPowerLevel(String powerLevel) {
		this.powerLevel = powerLevel;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public Date getLastUpdate() {
		return lastUpdate;
	}
	public void setLastUpdate(Date lastUpdate) {
		this.lastUpdate = lastUpdate;
	}
	
	
}
