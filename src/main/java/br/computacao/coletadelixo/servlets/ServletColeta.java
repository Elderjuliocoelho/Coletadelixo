package br.computacao.coletadelixo.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.coletadelixo.dao.ColetaDao;
import br.computacao.coletadelixo.dao.Dao;
import br.computacao.coletadelixo.model.Coleta;
import br.computacao.coletadelixo.model.LixoTipo;
import br.computacao.coletadelixo.model.LocalDescarte;
import br.computacao.coletadelixo.model.Morador;

@WebServlet({ "/ServletColeta", "/controllerColeta" })
public class ServletColeta extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public ServletColeta() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	ColetaDao coletadao = new ColetaDao();
	
	Integer coletaid=Integer.parseInt(request.getParameter("id"));
	Coleta delecoleta= coletadao.findById(Coleta.class,coletaid).get();
	
	coletadao.delete(delecoleta);
	
	response.sendRedirect("conColeta.jsp");
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	ColetaDao coletadao = new ColetaDao();
		
	if(request.getParameter("coletaid")==null) {
			
	Coleta novaColeta = new Coleta();
	Dao<Morador, Integer> daoMorador = new Dao<Morador, Integer>();
	int idMorador = Integer.parseInt(request.getParameter("idMorador"));
	Morador morador = daoMorador.findById(Morador.class, idMorador).get();
	
	novaColeta.setMorador(morador);
	novaColeta.setLocalDescarte(LocalDescarte.valueOf(request.getParameter("local").toUpperCase()));
	novaColeta.setLixotipo(LixoTipo.valueOf(request.getParameter("tipolixo").toUpperCase()));
	novaColeta.setPeso(Double.parseDouble(request.getParameter("peso")));

	coletadao.save(novaColeta);
	}
	else {
	Integer coletaid=Integer.parseInt(request.getParameter("coletaid"));
	Coleta coleta= coletadao.findById(Coleta.class,coletaid).get();
	int idMorador = Integer.parseInt(request.getParameter("idMorador"));
	Dao<Morador, Integer> daoMorador = new Dao<Morador, Integer>();
	Morador morador = daoMorador.findById(Morador.class, idMorador).get();
	
	coleta.setMorador(morador);
	coleta.setLocalDescarte(LocalDescarte.valueOf(request.getParameter("local").toUpperCase()));
	coleta.setLixotipo(LixoTipo.valueOf(request.getParameter("tipolixo").toUpperCase()));
	coleta.setPeso(Double.parseDouble(request.getParameter("peso")));
	
	coletadao.update(coleta);
	}
		//response.getWriter().append(novoCurso.getNome());
	response.sendRedirect("conColeta.jsp");
		
	}
}
