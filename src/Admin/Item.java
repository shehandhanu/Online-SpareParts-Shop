package Admin;

public class Item {
	public int itemID;
	public String itemName;
	public String brand;
	public String description;
	public String price;
	public String qty;

	

	public Item(int itemID, String itemName, String brand, String description, String price, String qty) {
		
		this.itemID = itemID;
		this.itemName = itemName;
		this.brand = brand;
		this.description = description;
		this.price = price;
		this.qty = qty;
	}
	
	public int getItemID() {
		return itemID;
	}



	public String getItemName() {
		return itemName;
	}


	


	public String getBrand() {
		return brand;
	}


	

	public String getDescription() {
		return description;
	}


	

	public String getPrice() {
		return price;
	}


	

	public String getQty() {
		return qty;
	}


	

}
