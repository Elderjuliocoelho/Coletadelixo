package br.computacao.coletadelixo.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.coletadelixo.dao.UsuarioDao;
import br.computacao.coletadelixo.model.Usuario;

/**
 * Servlet implementation class ServeledUsuario
 */
@WebServlet({"/ServletUsuario","/controllerUsuario"})
public class ServletUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Servlet at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		String metodo = request.getParameter("metodo");
		Usuario usuario = new Usuario();
		UsuarioDao dao = new UsuarioDao();
		System.out.println("To no post");
		if(metodo.equals("cadastro")) {
			System.out.println("To no post if");
			usuario.setUser(request.getParameter("usuario"));
			usuario.setPassword(request.getParameter("senha"));
			System.out.println(usuario.getUser());
			System.out.println(usuario.getPassword());
			dao.save(usuario);
		}
		else {
			String user= request.getParameter("usuario");
			String password = request.getParameter("senha");
			usuario = dao.login(user, password);
			if(usuario != null) {
				response.sendRedirect("CadastroMorador.jsp");
			}else {
				response.sendRedirect("Login.jsp");
			}

		}
		
	}

}
