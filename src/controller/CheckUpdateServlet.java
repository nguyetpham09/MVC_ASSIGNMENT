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
import model.BO.CheckAddStudentBO;
import model.BO.CheckLoginBO;
import model.BO.CheckUpdateBO;

/**
 * Servlet implementation class CheckUpdateServlet
 */
@WebServlet("/CheckUpdateServlet")
public class CheckUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckUpdateServlet() {
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
		ArrayList<Student> listStudent = null;
		ArrayList<Faculty> listFaculty = null;
		String id = request.getParameter("masv");
		String name = request.getParameter("hoten");
		int gender = Integer.parseInt(request.getParameter("gt"));
		String  faculty = request.getParameter("faculty");
		CheckUpdateBO checkUpdateBO = new CheckUpdateBO();
		CheckLoginBO checkLoginBO = new CheckLoginBO();
		try {
			if (checkUpdateBO.UpdateStudent(id, name, gender, faculty)) {
				destination = "/student_list.jsp";
				listStudent = checkLoginBO.getListStudents();
				listFaculty = checkLoginBO.getListFaculty();
				request.setAttribute("listStudent", listStudent);
				request.setAttribute("listFaculty", listFaculty);
				RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
				rd.forward(request, response);
			}
			else {
				destination = "/fail_update.jsp";
				RequestDispatcher rd = getServletContext().getRequestDispatcher(destination);
				rd.forward(request, response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
