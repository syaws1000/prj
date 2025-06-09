package a01_diexp.vo4;

import org.springframework.stereotype.Component;

@Component
public class StudentCard {
	private String cardNumber;
	// 사진, 이름, 학번..

	public StudentCard() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StudentCard(String cardNumber) {
		super();
		this.cardNumber = cardNumber;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}

	
	
}
