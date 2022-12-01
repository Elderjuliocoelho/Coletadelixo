<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<meta charset="utf-8">
<style>
body,html{
	height:100%;
	margin:0;
}
*{
    margin:0 auto;
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
main{
	height:100vh;
	display:flex;
	justify-content:center;
	align-items:center;
}
.form-container{
	width:100%;
	display:flex;
}
.form{
	height:100%;
	width:50%;
	display:flex;
	flex-direction:column;
	justify-content:space-between;
	align-items:center;
	padding:55px 0
}
.form-social{
	display:flex;
	gap:24px;
	margin-top:-7px;
}
.form-title{
	font-size:2rem;
	font-family:'Red Hat Display',sans-serif;
	color:var(--text-color-dark);
}
.form-login{
	/*background-color:aqua;*/
	margin-left:401px;
}
.form-register{
	/*background-color:tomato;*/
}
.social-icon{
	height:40px;
	width:40px;
	display:flex;
	justify-content:center;
	align-items:center;
	border-radius:50%;
	font-size:1.2rem;
	background-color:var(--icon-color);
	box-shadow:0 4px 4px #0004;
	transition:.5s;
}
.social-icon:hover{
	background-color:var(--primary-color);
	transform:translateY(-15%);
	color:var(--text-color-light);
}
a{
	text-decoration:none;
	color:#000;
}
:root{
	--primary-color:#FF3131;
	--secundary-color:#FFF;
	--text-color-dark:#000;
	--text-color-light:#fff;
	--icon-color:#F3F3F3;
}
.login-container{
	height:518px;
	width:768px;
	border-radius:12px;
	box-shadow:0 5px 20px ;
	overflow:hidden;
	margin-top:-69px;
	position:relative;
}
.form-input-container{
	display:flex;
	flex-direction:column;
	gap:10px;
	margin-top:54px;
	margin-left:384px;
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
	margin-top:10px;
}
.form-button:hover{
	background-color:var(--primary-color);
	color:#FFF;
}
.form-input{
	width:300px;
	height:40px;
	padding:10px 20px;
	border-style:none;
	background-color:var(--icon-color);
	border:1px solid black;
}
.form-title-light{
	color:var(--text-color-light);
}
.form-button-light{
	border:2px solid var(--text-color-light);
	color:var(--text-color-light);
}
.overlay-container{
	position:absolute;
	top:0;
	left:-384px;
	width:50%;
	height:100%;
	transform:translateX(100%);
	color:var(--text-color-light);
	text-align:center;
	transition:1s;
}
.overlay{
	position:absolute;
	width:100%;
	height:100%;
	display:flex;
	flex-direction:column;
	align-items:center;
	padding:40px;
	justify-content:space-evenly;
	background-color:var(--primary-color);
}
login-container.move.overlay-container{
	transform:translateX(0%);
}
img{
	border-radius:50%;
	width:300px;
	height:300px;
}
.Morador{
	margin-left:-758px;
	margin-top:199px;
}
#btn{
	margin-left:468px;
}
</style>
<title>Registration Page</title>
</head>
<script src="https://kit.fontawesome.com/324b71f187.js"crossorigin="anonymous"></script>
<body class="bg">
	<div id="menu">
		<li><a href="http://localhost:8080/coletadelixo/index.jsp">Pagina Principal</a></li>
	</div>
	<main>
		<div class="login-container"id="login-container">
			<div class="form-container">
				<form action="controllerUsuario" method="post">
				<div class="form-input-container">
    			<h2>Cadastrar</h2>
    			<div class="form-social">
					<a href="#" class="social-icon">
						<i class="fab  fa-facebook-f" aria-hidden="true"></i>			
					</a>
					<a href="#" class="social-icon">
						<i class="fab  fa-google" aria-hidden="true"></i>			
					</a>
					<a href="#" class="social-icon">
						<i class="fab  fa-linkedin-in" aria-hidden="true"></i>			
					</a>
					</div>
     				<p class="form-text">ou utilize sua conta</p>
						<input type="text" class="form-input" placeholder="Usuário" name="usuario" required>
						<input  class="form-input" placeholder="Senha" type="password" name="senha" required>
					</div>
					<button name="metodo" value="cadastro" type="submit" class="form-button" id="btn" >Cadastrar</button>
			   		<a href="http://localhost:8080/coletadelixo/Login.jsp"><button class="form-button" id="btn">Login</button></a>
			   </form>
			</div>
			<div class="overlay-container">
				<div class="overlay">
					<img src="https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-user-vector-avatar-png-image_1541962.jpg">
				</div>
			</div>
	</div>
	</main>
</body>
</html>