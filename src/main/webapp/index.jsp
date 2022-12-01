<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
body,html{
	height:100%;
	margin:0;
}
*{
    margin:-2px auto;
    padding:0;
    box-sizing:border-box;
    font-family:'Open Sans',sans-serif;
}
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
.texto{
	-webkit-text-stroke-width: medium;
	background-color:transparent;
	font-size:larger;
	margin-left:-69px;
}
.container {
  position: relative;
}

#image {
  position: absolute;
}

#t {
  position: absolute;
  font-size: 64px;
  left: 500px;
  top: 206px;
}
.palavra{
	padding:20px;
}
.logotipo{
	width:100px;
	height:50px;
}
</style>
<meta charset="UTF-8">
<title>Garbage collection</title>
</head>
<body class="bg">
	<ul id="menu">
		<li><a href="http://localhost:8080/coletadelixo/index.jsp">Pagina Principal</a></li>
		<li><a href="http://localhost:8080/coletadelixo/Login.jsp">Pagina de Cadastro</a></li>
	</ul>
 <div class="container">
 <img src="https://grupoalbatroz.com.br/site/views/data/blog/image-1588688643.PNG"width="1364px"height="590px">
  <label id="t"><center><font size="7"class="texto">Coleta de Lixo</font></center></br></label>
</body>
</html>