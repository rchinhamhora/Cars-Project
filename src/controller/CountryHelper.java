package controller;

import java.util.List;

import javax.persistence.*;

import model.Country;

/**
 * Rumbi Chinhamhora rchinhamhora
 * CIS 175 - Spring 2021
 * Mar 7, 2021
 */
public class CountryHelper {
	static EntityManagerFactory emfactory =
			Persistence.createEntityManagerFactory("Cars");
	
	public void save(Country c) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(c);
		em.getTransaction().commit();
		em.close();
	}

	@SuppressWarnings("unchecked")
	public List<Country> findAll(){
		EntityManager em = emfactory.createEntityManager();
		List<Country> countries = 
				em.createQuery("SELECT c FROM Country c").getResultList();
		return countries;
	}
	
	
	public Country findCountry(String countryName) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		TypedQuery<Country> typedQuery = 
				em.createQuery("select c from Country c "
						+ "where c.countryName = :selectedName", Country.class);
		typedQuery.setParameter("selectedName", countryName);
		List<Country> countries = typedQuery.getResultList();
		em.close();
		if (countries.size() == 1)
			return countries.get(0);
		return new Country(countryName);
	}

}
