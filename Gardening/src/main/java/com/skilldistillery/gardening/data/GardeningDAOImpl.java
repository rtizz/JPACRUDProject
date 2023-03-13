package com.skilldistillery.gardening.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.gardening.entities.Plant;

@Service
@Transactional
public class GardeningDAOImpl implements GardeningDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Plant findById(int plantId) {
		return em.find(Plant.class, plantId);
	}
	
	@Override
	public List<Plant> findByKeywordSearch(String keyword) {
		List<Plant> kwSearch = new ArrayList<>();
//		String kwMod = "%" + keyword + "%";
//		String query = "SELECT p.name FROM Plant p WHERE p.name LIKE :keyword";
		kwSearch = em.createQuery("SELECT p FROM Plant p WHERE p.name LIKE '" + keyword + "'" + "OR p.pests LIKE '" + keyword + "'" + "OR p.notes LIKE '" + keyword + "'", Plant.class).getResultList();		
		return kwSearch;
	}

	@Override
	public List<Plant> findAll() {
		String query = "SELECT p FROM Plant p";
		return em.createQuery(query, Plant.class).getResultList();
	}
	//!!!!!!!!!REMINDER!!!!!!
	//NO BEGIN COMMIT
	//NO EM.CLOSE
	@Override
	public Plant createPlant(Plant createPlant) {
		em.persist(createPlant);
		em.flush();
		return createPlant;
	}

	@Override
	public Plant updatePlant(int id, Plant plant) {
		System.out.println(id);
		// TODO Auto-generated method stub
		Plant updatePlant = em.find(Plant.class, id);
		updatePlant.setName(plant.getName());
		updatePlant.setScientificName(plant.getScientificName());
		updatePlant.setPests(plant.getPests());
		updatePlant.setFromSeed(plant.getFromSeed());
		updatePlant.setGermPeriod(plant.getGermPeriod());
		updatePlant.setPlanted(plant.getPlanted());
		updatePlant.setHarvested(plant.getHarvested());
		updatePlant.setYield(plant.getYield());
		updatePlant.setNotes(plant.getNotes());
		updatePlant.setImageUrl(plant.getImageUrl());
		return updatePlant;
	}

	@Override
	public boolean removePlant(int plantId) {
		Plant removePlant = em.find(Plant.class, plantId);
		em.remove(removePlant);
		Plant checkRemoval = em.find(Plant.class, plantId);
		if (checkRemoval == null) {
			return true;
		}else {
			return false;
		}
	}

}
