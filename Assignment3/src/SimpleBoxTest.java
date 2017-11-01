import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SimpleBoxTest extends SimpleBox {

	 BoxMain theStack = new BoxMain(10); 
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	public boolean testIsEmpty() {
		int top;
		int maxSize;
		return (top == maxSize -1);
		assertEquals(theStack.isEmpty());
	}

	@Test
	public boolean testIsFull() {
		int maxSize;
		int top;
		return (top == maxSize - 1);
		assertEquals(theStack.isFull());
	}

	@Test
	public void testPush(long j) {
		Object[] stackArray = null;
		int top;
		stackArray[++top]= j;
		assertEquals(theStack.push())
	}

	@Test
	public long testPop() {
		long[] stackArray = null;
		int top = 0;
		return stackArray[top--];
		assertEquals(theStack.pop())
	}

	@Test
	public long testPeek() {
		return stackArray[top];
		assertEquals(theStack.peek())
	}

}
