package com.skilldistillery.gardening.controllers;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.gardening.data.GardeningDAO;
import com.skilldistillery.gardening.entities.Plant;

@Controller
public class GardeningController {
	
	@Autowired
	private GardeningDAO gdao;
	
	@RequestMapping(path={"/", "home.do"})
	public String goHome(Model model) {
		model.addAttribute("plants", gdao.findAll());
		return "home";
	}
	
	@RequestMapping(path="newplant.do", params= {"plantedAlt", "harvestedAlt"},method= RequestMethod.POST)
	public String createPlant(Plant plant, Model model, @RequestParam("plantedAlt") String planted, @RequestParam("harvestedAlt") String harvested) {
		LocalDate plantedDate = LocalDate.parse(planted);
		LocalDate harvestedDate = LocalDate.parse(harvested);
		plant.setPlanted(plantedDate);
		plant.setHarvested(harvestedDate);
		model.addAttribute("plant", gdao.createPlant(plant));
		return "newplant";
	}
	
	@RequestMapping(path="updateplantform.do", params= "update", method= RequestMethod.GET)
	public String updatePlant(Plant plant, Model model, @RequestParam("update") int plantId) {
		Plant update = gdao.findById(plantId);
		System.out.println(update );
		model.addAttribute("update", update);
		return "updateplantform";
	}
	
	  @RequestMapping(path = "plantupdated.do", params= {"plantedAlt", "harvestedAlt"}, method = RequestMethod.POST)
	  public String plantUpdated(Plant plant, Model model, RedirectAttributes redir, @RequestParam("plantedAlt") String planted, @RequestParam("harvestedAlt") String harvested) {
		  LocalDate plantedDate = LocalDate.parse(planted);
		  LocalDate harvestedDate = LocalDate.parse(harvested);
		  plant.setPlanted(plantedDate);
		  plant.setHarvested(harvestedDate);
		  model.addAttribute("updatedplant", gdao.updatePlant(plant.getId(), plant));
		  System.out.println(plant.getId());
		  return "plantupdated";
	    
	   
		
	  }
	@RequestMapping(path="remove.do", params="remove", method= RequestMethod.GET)
	public String removePlant(Plant plant, Model model, @RequestParam("remove") int plantId) {
		gdao.removePlant(plantId);
		if(gdao.findById(plantId) != null) {
		String error = "Plant not removed";
		model.addAttribute("error", error);
		return "removed";
		} else {
		model.addAttribute("plantremoved", plant);
		return "removed";
	}
	}

}
