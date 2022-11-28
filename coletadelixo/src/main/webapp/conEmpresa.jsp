<%@page import="java.util.List"%>
<%@page import="br.computacao.coletadelixo.dao.EmpresaDao"%>
<%@page import="br.computacao.coletadelixo.model.Empresa"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
  EmpresaDao dao = new EmpresaDao();
  List<Empresa> empresas = dao.findAll(Empresa.class);
%>

<table class="table">
	<thead>
	  <tr>
		<th>ID</th>
		<th>Nome</th>
		<th>Descricao</th>
		<th>Telefone</th>
		<th>Responsavel</th>
		<th></th>
	  </tr>
	</thead>
    <tbody>
    <%for(Empresa empresa:empresas){ %>
    	<tr>
    		<td><%=empresa.getId() %></td>
    		<td><%=empresa.getNome() %></td>
    		<td><%=empresa.getDescricao() %></td>
    		<td><%=empresa.getTelefone() %></td>
    		<td><%=empresa.getResponsavel() %></td>
    		<td>
    			<a class="btn btn-secondary btn-sm" href="editEmpresa.jsp"id=<%=empresa.getId()%>">Editar</a>
    		</td>
    		<td>
    			<a class="btn btn-secondary btn-sm" href="<%=request.getContextPath()%> %>controllerEmpresa?id=<%=empresa.getId()%>">Excluir</a>
    		</td>
    	</tr>
    	<%} %>
    </tbody>
</table>
</body>
</html>