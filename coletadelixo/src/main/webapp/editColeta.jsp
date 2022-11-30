<%@page import="br.computacao.coletadelixo.dao.ColetaDao"%>
<%@page import="br.computacao.coletadelixo.model.Coleta"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
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
:root{
	--primary-color:#FF3131;
	--secundary-color:#FFF;
	--text-color-dark:#000;
	--text-color-light:#fff;
	--icon-color:#F3F3F3;
}
.edicao{
	height: 400px;
    width: 400px;
    border-radius: 12px;
    box-shadow: 0 5px 20px;
    overflow: hidden;
    margin-top: 19px;
    position: relative;
}
.form-button{
	height:40px;
	width:140px;
	border-style:none;
	border-radius:50px;
	border:2px solid var(--primary-color);
	background-color:transparent;
	font-size:1rem;
	font-weight:800;
	color:var(--primary-color);
	cursor:pointer;
	transition:.7s;
}
.form-button:hover{
	background-color:var(--primary-color);
	color:#FFF;
}
input{
	margin-top:11px;
}
</style>
<body>
<div id="menu">
		<li><a href="http://localhost:8080/coletadelixo/index.jsp">Pagina Principal</a></li>
</div>
<%
Integer coletaid = Integer.parseInt(request.getParameter("id"));
ColetaDao coletadao=new ColetaDao();
Coleta conColeta= coletadao.findById(Coleta.class, coletaid).get();
%>

<center><h1>Edição de Coleta</h1></center>
<form action="controllerColeta" method="post">
<center>
<div class="edicao">
<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqFcBUnqwsrl0W0YozcLDQU4xHKn3J_eqnrQ&amp;usqp=CAU">
	<div class="movimento" style="
    margin-top: -9px;
    padding: -10px;">
		
		<input type="text" name="peso" value="<%=conColeta.getPeso() %>"/>
		<br>
		
		<input type="submit" class="form-button" value="Salvar">
    </div>
</div>
</center>
	</form>
</body>
</html>