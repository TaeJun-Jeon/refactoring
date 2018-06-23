package com.dolba.dto;

public class PetDTO {
	
	private String petId;
	private String ownerId;
	private String petName;
	private String petSpecies;
	private String petSize;
	private String petLiness;
	private String petWeight;
	private String petGender;
	private String petAge;
	private String petfName;
	private String petfSize;
	
	public PetDTO() {}
	public PetDTO(String petId, String ownerId, String petName, String petSpecies, String petSize, String petLiness, String petWeight,
			String petGender, String petAge, String petfName, String petfSize) {
		super();
		this.petId = petId;
		this.ownerId = ownerId;
		this.petName = petName;
		this.petSpecies = petSpecies;
		this.petSize = petSize;
		this.petLiness = petLiness;
		this.petWeight = petWeight;
		this.petGender = petGender;
		this.petAge = petAge;
		this.petfName = petfName;
		this.petfSize = petfSize;
	}
	public String getPetId() {
		return petId;
	}
	public void setPetId(String petId) {
		this.petId = petId;
	}
	public String getOwnerId() {
		return ownerId;
	}
	public void setOwnerId(String ownerId) {
		this.ownerId = ownerId;
	}
	public String getPetName() {
		return petName;
	}
	public void setPetName(String petName) {
		this.petName = petName;
	}
	public String getPetSpecies() {
		return petSpecies;
	}
	public void setPetSpecies(String petSpecies) {
		this.petSpecies = petSpecies;
	}
	public String getPetSize() {
		return petSize;
	}
	public void setPetSize(String petSize) {
		this.petSize = petSize;
	}
	public String getPetLiness() {
		return petLiness;
	}
	public void setPetLiness(String petLiness) {
		this.petLiness = petLiness;
	}
	public String getPetWeight() {
		return petWeight;
	}
	public void setPetWeight(String petWeight) {
		this.petWeight = petWeight;
	}
	public String getPetGender() {
		return petGender;
	}
	public void setPetGender(String petGender) {
		this.petGender = petGender;
	}
	public String getPetAge() {
		return petAge;
	}
	public void setPetAge(String petAge) {
		this.petAge = petAge;
	}
	public String getPetfName() {
		return petfName;
	}
	public void setPetfName(String petfName) {
		this.petfName = petfName;
	}
	public String getPetfSize() {
		return petfSize;
	}
	public void setPetfSize(String petfSize) {
		this.petfSize = petfSize;
	}
	
	
	
	

}
