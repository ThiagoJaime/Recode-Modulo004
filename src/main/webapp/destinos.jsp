<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- META DATA -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>NASA Airline</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet" />

<!--font-family-->
<link href="https://fonts.googleapis.com/css?family=Rufina:400,700"
	rel="stylesheet" />

<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
	rel="stylesheet" />

<link rel="stylesheet" href="assets/css/style.css" />

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

	<section id="pack" class="packages">
		<div class="container">
			<div class="gallary-header text-center">
				<h2>Nossos Destinos</h2>
				<p>Ofertas personalizadas e únicas, criadas para atender às
					necessidades exclusivas dos clientes.</p>
			</div>
			<div class="packages-content">
				<div class="row">
					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p1.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Itália <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p2.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Canadá <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p3.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Marrocos <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p4.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Inglaterra <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p5.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Estados Unidos <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p6.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Japão <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p1.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Austrália <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p2.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Peru <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p3.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Tailândia <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p4.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Israel <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p5.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									Armênia <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-4 col-sm-6">
						<div class="single-package-item">
							<img src="assets/IMGs/packages/p6.jpg" alt="package-place">
							<div class="single-package-item-txt">
								<h3>
									México <span class="float-end">$750</span>
								</h3>
								<div class="packages-para">
									<p>
										<span><i class="fa fa-angle-right"></i> 5 Dias - 6
											Noites</span><i class="fa fa-angle-right"></i> 5 Estrelas
									</p>
									<p>
										<span><i class="fa fa-angle-right"></i> Transportes</span><i
											class="fa fa-angle-right"></i> instalações de alimentação
									</p>
								</div>
								<div class="packages-review">
									<p>
										<i class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><i class="fa fa-star"></i><i
											class="fa fa-star"></i><span>2544 Avaliações</span>
									</p>
								</div>
								<div class="about-btn">
									<a href="#">
										<button class="btn about-view packages-btn">Viaje
											Agora</button>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<jsp:include page="./components/footer.jsp"></jsp:include>

	<!-- Scripts -->
	<script src="assets/js/index.js"></script>
	<a href="#" id="scrollToTopButton" class="scroll-to-top-button"
		title="Voltar ao Topo"><img src="assets/IMGs/home/tst.gif" alt=""></a>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>