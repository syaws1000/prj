package web.com.spring.vo;
// animalId  animalName friendshipType
public class AnimalFriend {
	private int animalId; 
	private String animalName; 
	private String friendshipType;
	
	public int getAnimalId() {
		return animalId;
	}
	public void setAnimalId(int animalId) {
		this.animalId = animalId;
	}
	public String getAnimalName() {
		return animalName;
	}
	public void setAnimalName(String animalName) {
		this.animalName = animalName;
	}
	public String getFriendshipType() {
		return friendshipType;
	}
	public void setFriendshipType(String friendshipType) {
		this.friendshipType = friendshipType;
	}
	
}
