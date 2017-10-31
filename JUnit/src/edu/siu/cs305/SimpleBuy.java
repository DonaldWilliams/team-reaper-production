package edu.siu.cs305;

public class SimpleBuy {
	private int total_amount;
	private int limit;
	
	public SimpleBuy (int total_amount) {
		this.setTotalAmount(total_amount);
		this.limit = 2000;
	}
	
	public void subAmount () {
		if (this.total_amount < 0)
			System.out.println("Sorry can't add any more.");
		else
			this.total_amount -= 1;
	}
	
	public void addAmount() {
		if (this.total_amount > limit)
			System.out.println("Sorry can't add any more.");
		else
			this.total_amount += 1;
	}

	public int getTotalAmount() {
		return total_amount;
	}

	public void setTotalAmount(int total_amount) {
		this.total_amount = total_amount;
	}
	
	
}
