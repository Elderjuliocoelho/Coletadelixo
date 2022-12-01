package br.computacao.coletadelixo.servlets;


import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.coletadelixo.dao.MoradorDao;
import br.computacao.coletadelixo.model.Morador;
import br.computacao.coletadelixo.model.MoradorLogado;


@WebServlet({ "/ServletMorador", "/controllerMorador" })
public class ServletMorador extends HttpServlet{
	private static final long serialVersionUID = 1L;

	public ServletMorador() {
	    super();
	        // TODO Auto-generated constructor stub
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MoradorDao dao = new MoradorDao();
		
		Integer moradorid=Integer.parseInt(request.getParameter("id"));
		Morador delemorador= dao.findById(Morador.class,moradorid).get();
		
		dao.delete(delemorador);
		
		response.sendRedirect("conMorador.jsp");
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		MoradorDao dao = new MoradorDao();
			
		if(request.getParameter("moradorid")==null) {
				
		Morador novoMorador = new Morador();
		novoMorador.setNome(request.getParameter("nome-morador"));
		novoMorador.setCpf(request.getParameter("Cpf"));
		novoMorador.setTelefone(request.getParameter("telefone-morador"));
	
		dao.save(novoMorador);
		
		MoradorLogado.setUsuario(novoMorador);
		}
		else {			
		Integer moradorid=Integer.parseInt(request.getParameter("moradorid"));
		Morador morador= dao.findById(Morador.class,moradorid).get();
					
		morador.setNome(request.getParameter("nome-morador"));
		morador.setCpf(request.getParameter("Cpf"));
		morador.setTelefone(request.getParameter("telefone-morador"));
					
		dao.update(morador);
		} 
			//response.getWriter().append(novoCurso.getNome());
		response.sendRedirect("conMorador.jsp");
		}
}
