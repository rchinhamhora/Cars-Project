/**
 * Daniel De Lima
 * CIS 175 - Spring 2021
 * Mar 8, 2021
 */
package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Country;

/**
 * Servlet implementation class AddCountriesServlet
 */
@WebServlet("/addCountryServlet")
public class AddCountryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCountryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String countryName = request.getParameter("countryName");
		
		Country country = new Country(countryName);
		CountryHelper dao = new CountryHelper();
		dao.save(country);
		
		getServletContext().getRequestDispatcher("/index.html").forward(request, response);
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
