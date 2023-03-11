package com.skilldistillery.gardening.data;

import java.util.List;

import com.skilldistillery.gardening.entities.Plant;


public interface GardeningDAO {
	
	Plant findById(int plantId); 
	List<Plant> findAll();
	Plant create(Plant plant);
	Plant update(Plant plant);
	boolean deleteById(int plantId);

}
