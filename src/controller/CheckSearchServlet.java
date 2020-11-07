package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BEAN.Faculty;
import model.BEAN.Student;
import model.BO.CheckLoginBO;

/**
 * Servlet implementation class CheckSearchServlet
 */
@WebServlet("/CheckSearchServlet")
public class CheckSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckSearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost (request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String destination = null;
		String khoa = request.getParameter("faculty");
		CheckLoginBO checkLoginBO = new CheckLoginBO();
		ArrayList<Student> listStudentByFaculty = null;
		ArrayList<Student> listStudent = null;
		ArrayList<Faculty> listFaculty = null;
		try {
			if (checkLoginBO.seachFaculty(khoa)) {
				listStudentByFaculty = checkLoginBO.getListStudentsByFaculty(khoa);
				//listStudent = checkLoginBO.getListStudents();
				//listFaculty = checkLoginBO.getListFaculty();
				destination = "/student_list.jsp";
				request.setAttribute("listStudentByFaculty", listStudentByFaculty);
				request.setAttribute("listStudent", listStudent);
				request.setAttribute("listFaculty", listFaculty);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
				rd.forward(request, response);
			} else {
				destination="/fail_search.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
				rd.forward(request, response);
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
