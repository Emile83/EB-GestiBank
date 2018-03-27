package gestibank;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controleur
 */
public class Controleur extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Controleur() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	private void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		ServletContext ctx = this.getServletContext();
		RequestDispatcher rd = null;

		String page = request.getParameter("page");
		if (page == null) {
			page = "vide";
		}

		switch (page) {
		case "login":
			rd = ctx.getRequestDispatcher("/Ctrl_Login");
			rd.include(request, response);
			String erreur = (String) request.getAttribute("error");
			rd = ctx.getRequestDispatcher("/vAccueilClient.jsp");
			rd.forward(request, response);
//			if (erreur == null) {
//				//A completer
//			} else {
//				rd = ctx.getRequestDispatcher("/vAcceuil.jsp");
//				rd.forward(request, response);
//			}
			break;
		case "inscript":
			rd = ctx.getRequestDispatcher("/vInscription.jsp");
			rd.forward(request, response);
			break;
		case "envoieinscript":
			rd = ctx.getRequestDispatcher("/Ctrl_Inscript");
			rd.include(request, response);
			//String erreur = (String) request.getAttribute("error");
			rd = ctx.getRequestDispatcher("/vRemerciement.jsp");
			rd.forward(request, response);
			break;
		case "deconnex":
			rd = ctx.getRequestDispatcher("/CtrlDeconnex");
			rd.include(request, response);
			rd = ctx.getRequestDispatcher("/vDeconnexion.jsp");
			rd.forward(request, response);
			break;
			// Les utilisateurs externes n'ont pas forcément besoin d'être 
			// suivis par des cookies, à voir si on le fait quand même

		default:
			rd = ctx.getRequestDispatcher("/vAccueil.jsp");
			rd.forward(request, response);
			break;
		}
	}
}
