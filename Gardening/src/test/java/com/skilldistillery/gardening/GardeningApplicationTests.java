package com.skilldistillery.gardening;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.skilldistillery.gardening.entities.Plant;

@SpringBootTest
class GardeningApplicationTests {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Plant plant;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	    emf = Persistence.createEntityManagerFactory("JPAgardening");
	}
	
	
	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}
	@Test
	void contextLoads() {
	plant =	em.find(Plant.class, 1);
	assertNotNull(plant);
	assertEquals("Cucumber", plant.getName());
	}

	
	@AfterEach
	void tearDown() throws Exception {
	    em.close();
	    plant= null;
	}
	
	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
}
}
