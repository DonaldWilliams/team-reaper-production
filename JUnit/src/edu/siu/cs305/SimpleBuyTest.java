package edu.siu.cs305;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class SimpleBuyTest {
	SimpleBuy phone=new SimpleBuy(1000);

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testAddAmount() {
		assertEquals(phone.getTotalAmount() + 1, phone.addAmount());
	}

	@Test
	public void testSubtractAmount() {
		assertEquals(phone.getTotalAmount() - 1, phone.subAmount());
	}

}

