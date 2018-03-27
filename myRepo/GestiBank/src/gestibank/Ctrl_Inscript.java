package gestibank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Ctrl_Inscript
 */
public class Ctrl_Inscript extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ctrl_Inscript() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String genre = request.getParameter("rbgenre");
		String nom = request.getParameter("txtNom");
		String prenom = request.getParameter("txtPrenom");
		System.out.println(prenom);
		String couriel = request.getParameter("txtCouriel");
		String adresse = request.getParameter("txtAdresse");
		String ville = request.getParameter("txtVille");

		HttpSession session = request.getSession(true);
		session.setAttribute("user", prenom);
		
	}

}
