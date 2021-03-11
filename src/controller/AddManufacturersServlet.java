/**
 * @author Daniel De Lima - dcdelima
 * CIS 175 - Spring 2021
 * Mar 8, 2021
 */

package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Country;
import model.Manufacturer;

/**
 * Servlet implementation class AddManufacturers
 */
@WebServlet("/addManufacturersServlet")
public class AddManufacturersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddManufacturersServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
		/*Creating instance of helper methods*/
		ManufacturerHelper dao = new ManufacturerHelper();
		CountryHelper ch = new CountryHelper();
		
		/*Defining column components and saving to session*/
		String manufacturerName = request.getParameter("manufacturerName");
		String countryId = request.getParameter("country");
		
		//Creating new country
		Country country = new Country(countryId);
		
		//Getting list of all countries in the table
		List<Country> countriesList = ch.findAll();
		
		/*Creating new instance of model class with saved requests*/
		Manufacturer manufacturer = new Manufacturer(country, manufacturerName);
		
		// persisting manufacturer to database
		if(countriesList.contains(country)) {
			dao.save(manufacturer);	
		}else {
			ch.save(country);
			dao.save(manufacturer);
		}
		getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		
	}

}
