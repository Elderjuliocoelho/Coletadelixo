<%@page import="java.util.List"%>
<%@page import="br.computacao.coletadelixo.dao.ColetaDao"%>
<%@page import="br.computacao.coletadelixo.model.Coleta"%>
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
  Dao<Coleta,Integer> dao = new Dao<Contador,Integer>();	
 // ColetaDao dao = new ColetaDao();
  List<Coleta> coletas = dao.findAll(Coleta.class);
%>

<table class="table">
	<thead>
	  <tr>
		<th>ID</th>
		<th>Morador</th>
		<th>Tipo</th>
		<th>Local</th>
		<th>Peso</th>
	  </tr>
	</thead>
    <tbody>
    <%for(Coleta coleta:coletas){ %>
    	<tr>
    		<td><%=coleta.getId() %></td>
    		<td><%=coleta.getMorador() %></td>
    		<td><%=coleta.getLixotipo() %></td>
    		<td><%=coleta.getLocalDescarte() %></td>
    		<td><%=coleta.getPeso() %></td>
    		<td>
    			<a class="btn btn-secondary btn-sm"id="edit" href="editColeta.jsp?id=<%=coleta.getId()%>">Editar</a>
    		</td>
    		<td>
    			<a class="btn btn-secondary btn-sm"id="exlcuir" href="<%= request.getContextPath() %> %>controllerEmpresa?id=<%=coleta.getId()%>">Excluir</a>
    		</td>
    	</tr>
    	<%} %>
    </tbody>
</table>
</body>
</html>