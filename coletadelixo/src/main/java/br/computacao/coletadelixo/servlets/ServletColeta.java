package br.computacao.coletadelixo.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.coletadelixo.dao.ColetaDao;
import br.computacao.coletadelixo.model.Coleta;

@WebServlet({ "/ServletColeta", "/controllerColeta" })
public class ServletColeta extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public ServletColeta() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	response.getWriter().append("Teste Empresa").append(request.getContextPath());
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	ColetaDao coletadao = new ColetaDao();
		
	if(request.getParameter("coletaid")==null) {
			
	Coleta novaColeta = new Coleta();
	//novaColeta.setMorador(request.getParameter(""));
	//novaColeta.setLocalDescarte(request.getParameter(""));
	//novaColeta.setLixotipo(request.getParameter(""));
	//novaColeta.setPeso(request.getParameter("peso"));

	coletadao.save(novaColeta);
	}
	else {
	Integer coletaid=Integer.parseInt(request.getParameter("coletaid"));
	Coleta coleta= coletadao.findById(Coleta.class,coletaid).get();
	
	//coleta.setMorador(request.getParameter(""));
	//coleta.setLocalDescarte(request.getParameter(""));
	//coleta.setLixotipo(request.getParameter(""));
	//coleta.setPeso(request.getParameter("peso"));
			
	coletadao.update(coleta);
	}
		//response.getWriter().append(novoCurso.getNome());
	response.sendRedirect("conColeta.jsp");
		
	}
}
