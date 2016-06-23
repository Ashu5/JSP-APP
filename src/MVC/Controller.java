package MVC;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Controller")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String salary=request.getParameter("salary");
	Model model= new Model();
	model.setSalary(salary);
	ArrayList<Model> list=null;
	Database db=new Database(); 
	try{
		list=db.getModel(model);
		request.setAttribute("list", list);
		RequestDispatcher rd= request.getRequestDispatcher("view.jsp");
		rd.forward(request, response);
		return;
	}
	catch(Exception e){
		e.printStackTrace();
	}
	

	
	
	}

	


}
