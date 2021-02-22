package com.search;

public class ItemDetails {

	private String itemcode;
	private String itemName;
	private String availability;
	private String modelID;
	private String price;
	private String year;
	private String brand;
	
	
	public ItemDetails(String itemcode, String itemName, String availability, String modelID, String price, String year, String brand) {
		this.itemcode = itemcode;
		this.itemName = itemName;
		this.availability = availability;
		this.modelID = modelID;
		this.price = price;
		this.year = year;
		this.brand = brand;
	}

	

	public String getYear() {
		return year;
	}


	public String getBrand() {
		return brand;
	}


	public String getPrice() {
		return price;
	}


	public String getItemcode() {
		return itemcode;
	}


	public String getItemName() {
		return itemName;
	}


	public String getAvailability() {
		return availability;
	}


	public String getModelID() {
		return modelID;
	}


	
}
