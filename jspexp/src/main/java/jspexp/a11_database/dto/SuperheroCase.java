package jspexp.a11_database.dto;

public class SuperheroCase {
	private int caseId;
	private String superheroName;
	private String villainName;
	private String caseDescription;
	private String caseLocation;
	private String caseStatus;
	public SuperheroCase() {
		// TODO Auto-generated constructor stub
	}
	public SuperheroCase(int caseId, String superheroName, String villainName, String caseDescription,
			String caseLocation, String caseStatus) {
		this.caseId = caseId;
		this.superheroName = superheroName;
		this.villainName = villainName;
		this.caseDescription = caseDescription;
		this.caseLocation = caseLocation;
		this.caseStatus = caseStatus;
	}
	public int getCaseId() {
		return caseId;
	}
	public void setCaseId(int caseId) {
		this.caseId = caseId;
	}
	public String getSuperheroName() {
		return superheroName;
	}
	public void setSuperheroName(String superheroName) {
		this.superheroName = superheroName;
	}
	public String getVillainName() {
		return villainName;
	}
	public void setVillainName(String villainName) {
		this.villainName = villainName;
	}
	public String getCaseDescription() {
		return caseDescription;
	}
	public void setCaseDescription(String caseDescription) {
		this.caseDescription = caseDescription;
	}
	public String getCaseLocation() {
		return caseLocation;
	}
	public void setCaseLocation(String caseLocation) {
		this.caseLocation = caseLocation;
	}
	public String getCaseStatus() {
		return caseStatus;
	}
	public void setCaseStatus(String caseStatus) {
		this.caseStatus = caseStatus;
	}
	
}
