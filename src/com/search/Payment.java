package com.search;

public class Payment {
	
	String payid;
	String firstname;
	String lastname;
	String email;
	String address;
	String phone;
	String paymethod;
	String cardNumber;
	String cvv;
	
	public Payment(String payid, String firstname, String lastname, String email, String address, String phone,
			String paymethod, String cardNumber, String cvv) {
		this.payid = payid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.paymethod = paymethod;
		this.cardNumber = cardNumber;
		this.cvv = cvv;
		
	}

	public String getPayid() {
		return payid;
	}

	public String getFirstname() {
		return firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public String getEmail() {
		return email;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getPaymethod() {
		return paymethod;
	}

	public String getCardNumber() {
		return cardNumber;
	}

	public String getCvv() {
		return cvv;
	}	
	
}
