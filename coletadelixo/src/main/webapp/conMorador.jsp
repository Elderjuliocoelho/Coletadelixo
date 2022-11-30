<%@page import="br.computacao.coletadelixo.dao.Dao"%>
<%@page import="java.util.List"%>
<%@page import="br.computacao.coletadelixo.dao.MoradorDao"%>
<%@page import="br.computacao.coletadelixo.model.Morador"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="UTF-8">
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
.form-input{
	width:300px;
	height:40px;
	padding:10px 20px;
	border-style:none;
	background-color:var(--icon-color);
	border:1px solid black;
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
		<li><a href="http://localhost:8080/coletadelixo/CadastroColeta.jsp">Coleta</a></li>
</ul>
<%
  MoradorDao dao = new MoradorDao();
  List<Morador> moradores = dao.findAll(Morador.class);
%>
<table class="table">
	<thead>
	  <tr>
		<th>ID</th>
		<th>Nome</th>
		<th>Cpf</th>
		<th>Telefone</th>
		<th></th>
	  </tr>
	</thead>
    <tbody>
	    <%
	    for(Morador morador:moradores){ 
	    %>
    	<tr>
    		<td><%=morador.getId() %></td>
    		<td><%=morador.getNome() %></td>
    		<td><%=morador.getCpf() %></td>
    		<td><%=morador.getTelefone() %></td>
    		<td>
    			<a class="btn btn-secondary btn-sm"id="edit" href="editMorador.jsp?id=<%=morador.getId()%>">Editar</a>
    		</td>
    		<td>
    			<a class="btn btn-secondary btn-sm"id="excluir" href="<%= request.getContextPath() %> %>controllerMorador?id=<%=morador.getId()%>">Excluir</a>
    		</td>
    	</tr>
    	<%} %>
    </tbody>
</table>
</body>
</html>