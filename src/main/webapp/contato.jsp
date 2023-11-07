<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="en">

<head>
<!-- META DATA -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!--font-family-->
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700"
	rel="stylesheet" />

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />

<!-- TITLE OF SITE -->
<title>NASA Airline</title>

<!--style.css-->
<link rel="stylesheet" href="assets/css/style.css" />

<!--responsive.css-->
<link rel="stylesheet" href="assets/css/responsive.css" />
</head>

<body>

	<jsp:include page="./components/nav.jsp">
		<jsp:param name="main" value="index.jsp" />
		<jsp:param name="destinos" value="destinos.jsp" />
		<jsp:param name="promocoes" value="promocoes.jsp" />
		<jsp:param name="contato" value="contato.jsp" />
		<jsp:param name="cadastro" value="views/cadastros" />
	</jsp:include>

	<section class="get-in-touch">
		<h1 class="title">Contate-nos</h1>
		<form class="contact-form row">
			<div class="form-field col-lg-6">
				<input id="name" class="input-text js-input" type="text" required>
				<label class="label" for="name">Nome</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="email" class="input-text js-input" type="email" required>
				<label class="label" for="email">E-mail</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="company" class="input-text js-input" type="text" required>
				<label class="label" for="company">Nome da Empresa</label>
			</div>
			<div class="form-field col-lg-6 ">
				<input id="phone" class="input-text js-input" type="text" required>
				<label class="label" for="phone">Número de Contato</label>
			</div>
			<div class="form-field col-lg-12">
				<input id="message" class="input-text js-input" type="text" required>
				<label class="label" for="message">Mensagem</label>
			</div>
			<div class="form-field col-lg-12 d-flex justify-content-center">
				<input class="submit-btn" type="submit" value="Envie">
			</div>
		</form>
	</section>
	
	<jsp:include page="./components/footer.jsp"></jsp:include>

	<script src="assets/js/index.js"></script>

	<a href="#" id="scrollToTopButton" class="scroll-to-top-button"
		title="Voltar ao Topo"><img src="assets/IMGs/home/tst.gif"
		alt=""></a>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>