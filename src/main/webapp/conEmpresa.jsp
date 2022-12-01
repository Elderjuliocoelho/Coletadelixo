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
<style>
#menu{
	list-style:none;
	padding:0;
	background-color:rgb(37,37,39);
}
#menu li{
	display:inline;
}
#menu li a{
	color:#FFF;
	padding:20px;
	text-decoration:none;
	display:inline-block;
}
#menu li a:hover{
	color:blue;
}
#edit{
	background-color:black;
}
#excluir{
	background-color:red;
}

</style>
<body>

<ul id="menu">
		<li><a href="http://localhost:8080/coletadelixo/index.jsp">Pagina Principal</a></li>
</ul>

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
    			<a class="btn btn-secondary btn-sm" id="edit"href="editEmpresa.jsp?id=<%=empresa.getId()%>">Editar</a>
    		</td>
    		<td>
    			<a class="btn btn-secondary btn-sm" id="excluir"href="<%= request.getContextPath()%>/controllerEmpresa?id=<%=empresa.getId()%>">Excluir</a>
    		</td>
    	</tr>
    	<%} %>
    </tbody>
</table>
</body>
</html>