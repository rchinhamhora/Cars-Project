/**
 * @author Daniel De Lima - dcdelima
 * CIS 175 - Spring 2021
 * Mar 8, 2021
 */

package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Manufacturer;

/**
 * Servlet implementation class ViewAllManufacturersServlet
 */
@WebServlet("/viewManufacturers")
public class ViewAllManufacturersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAllManufacturersServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*Creating instance of helper class*/
		ManufacturerHelper dao = new ManufacturerHelper();
		
		/*The JSP that displays the list of manufacturers*/
		String path = "/manufacturers-list.jsp";
		
		/*Getting all manufacturers in the database*/
		List<Manufacturer> manList = dao.findAll();
		
		/*Saving object in session*/
		request.setAttribute("allManufacturers", manList);
		
		// in case there aren't any, display nothing
		if(manList.isEmpty()) {
			request.setAttribute("allManufacturers", " ");
		}
		
		/*Sending the request to the JSP path*/
		getServletContext().getRequestDispatcher(path).forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
