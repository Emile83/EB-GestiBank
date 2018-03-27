package gestibank;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Ctrl_Login
 */
public class Ctrl_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ctrl_Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);

	
	String log = request.getParameter("txtId");
	String mdp = request.getParameter("txtMdp");
	
	HttpSession session = request.getSession(true);
	session.setAttribute("user", log);

//  Tester l'existence de l'utilisateur
	
//	if( nom.length() > 0){
//		User user = new User(nom,mdp);
//
//		HttpSession session = request.getSession(true);
//		
//		session.setAttribute("user",  user);
//	}
//	
//	else{
//		request.setAttribute("error", "nom obligatoire" );
//	}
	
	}

}
