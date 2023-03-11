package com.skilldistillery.gardening.data;

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
		return em.find(Plant.class, 1);
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
	public Plant create(Plant plant) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Plant update(Plant plant) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean deleteById(int plantId) {
		// TODO Auto-generated method stub
		return false;
	}

}
