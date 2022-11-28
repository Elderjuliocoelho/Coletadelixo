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
<body>

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
    <%for(Morador morador:moradores){ %>
    	<tr>
    		<td><%=morador.getId() %></td>
    		<td><%=morador.getNome() %></td>
    		<td><%=morador.getCpf() %></td>
    		<td><%=morador.getTelefone() %></td>
    		<td>
    			<a class="btn btn-secondary btn-sm" href="editMorador.jsp"id=<%=morador.getId()%>">Editar</a>
    		</td>
    		<td>
    			<a class="btn btn-secondary btn-sm" href="<%=request.getContextPath()%> %>controllerMorador?id=<%=morador.getId()%>">Excluir</a>
    		</td>
    	</tr>
    	<%} %>
    </tbody>
</table>

</body>
</html>