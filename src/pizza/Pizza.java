package pizza;

public class Pizza {
	private String kind;
	private String topping[];
	private int num;
	public Pizza() {
		
		
	}

	public Pizza(String kind, String[] topping, int num) {
		this.kind = kind;
		this.topping = topping;
		this.num = num;

	}

	public String getKind() {
		return kind;
	}

	public void setKind(String kind) {
		this.kind = kind;
	}

	public String[] getTopping() {
		return topping;
	}

	public void setTopping(String[] topping) {
		this.topping = topping;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}
	
	
}
