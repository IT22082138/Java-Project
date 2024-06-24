package com.Payment;

public class Payment {
	private String email;
	private String phone;
	private String cNo;
	private String cvv;
	private String eDate;

	public Payment(String email, String phone, String cNo, String cvv, String eDate) {
		this.email = email;
		this.phone = phone;
		this.cNo = cNo;
		this.cvv = cvv;
		this.eDate = eDate;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getcNo() {
		return cNo;
	}

	public String getCvv() {
		return cvv;
	}

	public String geteDate() {
		return eDate;
	}

}
