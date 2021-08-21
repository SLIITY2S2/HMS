package com.sliit.itp.model;

public class Payment {
	
	private int cardno;
	private String holder;
	private String expire;
	private String bank;
	private String type;
	private String service;
	private String currentDate;
	private double total;
	private int appno;
	
	public Payment(int cardno, String holder, String type, String expire, String bank, String currentDate, String service, double total, int appno) {
		
		this.cardno = cardno;
		this.holder = holder;
		this.expire = expire;
		this.bank = bank;
		this.type = type;
		this.service = service;
		this.currentDate = currentDate;
		this.total = total;
		this.appno = appno;
	}

	public int getCardno() {
		return cardno;
	}

	public String getHolder() {
		return holder;
	}

	public String getExpire() {
		return expire;
	}

	public String getBank() {
		return bank;
	}

	public String getType() {
		return type;
	}

	public String getService() {
		return service;
	}

	public String getCurrentDate() {
		return currentDate;
	}

	public int getAppno() {
		return appno;
	}


	public double getTotal() {
		return total;
	}

	
	

}
