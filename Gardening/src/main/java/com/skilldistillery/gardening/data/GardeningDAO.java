package com.skilldistillery.gardening.data;

import java.time.LocalDateTime;
import java.util.List;

import com.skilldistillery.gardening.entities.Plant;


public interface GardeningDAO {
	
	Plant findById(int plantId); 
	List<Plant> findAll();
	Plant createPlant(Plant createPlant);
	Plant updatePlant(int id, Plant updatePlant);
	boolean removePlant(int plantId);
	List<Plant> findByKeywordSearch(String keyword);

}
