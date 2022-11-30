package br.computacao.coletadelixo.servlets;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.computacao.coletadelixo.dao.EmpresaDao;
import br.computacao.coletadelixo.model.Empresa;

@WebServlet({ "/ServletEmpresa", "/controllerEmpresa" })
public class ServletEmpresa extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	public ServletEmpresa() {
		super();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	response.getWriter().append("Teste Empresa").append(request.getContextPath());
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	EmpresaDao empdao = new EmpresaDao();
		
	if(request.getParameter("empresaid")==null) {
			
	Empresa novaEmpresa = new Empresa();
	novaEmpresa.setNome(request.getParameter("nome-empresa"));
	novaEmpresa.setDescricao(request.getParameter("descricao"));
	novaEmpresa.setTelefone(request.getParameter("Telefone-empresa"));
	novaEmpresa.setResponsavel(request.getParameter("Responsavel"));

	empdao.save(novaEmpresa);
	}
	else {
	Integer empresaid=Integer.parseInt(request.getParameter("empresaid"));
	Empresa empresa= empdao.findById(Empresa.class,empresaid).get();
			
	empresa.setNome(request.getParameter("nome-empresa"));
	empresa.setDescricao(request.getParameter("descricao"));
	empresa.setTelefone(request.getParameter("Telefone-empresa"));
	empresa.setResponsavel(request.getParameter("Responsavel"));;
			
	empdao.update(empresa);
	}
		//response.getWriter().append(novoCurso.getNome());
	response.sendRedirect("conEmpresa.jsp");
		
	}
}
