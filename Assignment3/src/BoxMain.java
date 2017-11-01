
public class BoxMain {
	
	public int maxSize;
	   public long[] stackArray;
	   public int top;
	   
	   public BoxMain(int s) {
	      maxSize = s;
	      stackArray = new long[maxSize];
	      top = -1;
	   }

	   public static void main(String[] args) {
	      BoxMain theStack = new BoxMain(10); 
	     
	   }
	

}
