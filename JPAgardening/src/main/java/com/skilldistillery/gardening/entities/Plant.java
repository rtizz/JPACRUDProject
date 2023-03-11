package com.skilldistillery.gardening.entities;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Plant {
	
	public Plant() {}
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column(name= "scientific_name")
	private String scientificName;
	
	private String type;
	
	@Column(name="known_pests")
	private String pests;
	
	@Column(name="planted_from_seed")
	private boolean fromSeed;
	
	@Column(name="germination_period_days")
	private Integer germPeriod;
	
//	@Temporal(TemporalType.DATE)
	@Column(name="date_planted")
	private LocalDate planted;
	
//	@Temporal(TemporalType.DATE)
	@Column(name="date_harvested")
	private LocalDate harvested;
	
	@Column(name="lbs_yield")
	private Double yield;
	
	private String notes;
	
	@Column(name= "plant_image_url")
	private String imageUrl;

	public int getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getScientificName() {
		return scientificName;
	}

	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPests() {
		return pests;
	}

	public void setPests(String pests) {
		this.pests = pests;
	}

	public boolean getFromSeed() {
		return fromSeed;
	}

	public void setFromSeed(boolean fromSeed) {
		this.fromSeed = fromSeed;
	}
	
	

	public Integer getGermPeriod() {
		return germPeriod;
	}

	public void setGermPeriod(Integer germPeriod) {
		this.germPeriod = germPeriod;
	}

	public LocalDate getPlanted() {
		return planted;
	}

	public void setPlanted(LocalDate planted) {
		this.planted = planted;
	}

	public LocalDate getHarvested() {
		return harvested;
	}

	public void setHarvested(LocalDate harvested) {
		this.harvested = harvested;
	}

	public Double getYield() {
		return yield;
	}

	public void setYield(Double yield) {
		this.yield = yield;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public int hashCode() {
		return Objects.hash(fromSeed, germPeriod, harvested, id, imageUrl, name, notes, pests, planted, scientificName,
				type, yield);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Plant other = (Plant) obj;
		return fromSeed == other.fromSeed && germPeriod == other.germPeriod
				&& Objects.equals(harvested, other.harvested) && id == other.id
				&& Objects.equals(imageUrl, other.imageUrl) && Objects.equals(name, other.name)
				&& Objects.equals(notes, other.notes) && Objects.equals(pests, other.pests)
				&& Objects.equals(planted, other.planted) && Objects.equals(scientificName, other.scientificName)
				&& Objects.equals(type, other.type)
				&& Double.doubleToLongBits(yield) == Double.doubleToLongBits(other.yield);
	}

	@Override
	public String toString() {
		return "Plant [id=" + id + ", name=" + name + ", scientificName=" + scientificName + ", type=" + type
				+ ", pests=" + pests + ", fromSeed=" + fromSeed + ", germPeriod=" + germPeriod + ", planted=" + planted
				+ ", harvested=" + harvested + ", yield=" + yield + ", notes=" + notes + ", imageUrl=" + imageUrl + "]";
	}

	
	

	

}
