<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!doctype html>
<html lang="en">

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
<link rel="stylesheet" href="../assets/css/style.css" />

<!--responsive.css-->
<link rel="stylesheet" href="../assets/css/responsive.css" />

</head>

<body>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light"
         style="margin-bottom: 0; background-color: #00d9ff0e !important;">
        <div class="container-fluid">
            <a class="img-thumbmail"
               href="#">
                <img src="../assets/IMGs/home/logo.webp"
                     style="width: 400px;"
                     class="rounded-pill"
                     alt="NASA Airline">
            </a>
            <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarNav"
                    aria-controls="navbarNav"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse"
                 id="navbarNav">
                <ul class="navbar-nav align-items-center">
                    <li class="nav-item">
                        <a class="nav-link"
                           aria-current="page"
                           href="../index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="">Destinos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="">Promoções</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="">Contato</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="">Cadastros</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	
	<!--travel-box start-->
	<section class="travel-box">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="single-travel-boxes">
						<div id="desc-tabs" class="desc-tabs flex-column">
							<ul class="nav nav-tabs d-flex justify-content-center flex-wrap"
								role="tablist" id="travel-tabs">
								<li role="presentation" class="active"><a href="#reservas"
									aria-controls="reservas" role="tab" data-bs-toggle="tab"> <i
										class="fa fa-tree"></i> Reservas
								</a></li>
								<li role="presentation"><a href="#promocoes"
									aria-controls="promocoes" role="tab" data-bs-toggle="tab">
										<i class="fa fa-calculator"></i>Promoções
								</a></li>
								<li role="presentation"><a href="#flights"
									aria-controls="flights" role="tab" data-bs-toggle="tab"> <i
										class="fa fa-plane"></i> Destinos
								</a></li>
								<li role="presentation"><a href="#clients"
									aria-controls="clients" role="tab" data-bs-toggle="tab"> <i
										class="fa fa-address-card"></i> Clientes
								</a></li>
							</ul>
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane" id="reservas">

									<div class="d-flex justify-content-center my-4">
										<button class="btn btn-info shadow" data-bs-toggle="modal"
											data-bs-target="#modalRes">Criar Reserva</button>
									</div>

									<jstl:forEach items="${Reservas}" var="R">
										<h2>Reserva ${R.idReserva}</h2>
										<div class="row justify-content-center">
											<div class="mb-3 col-sm-3">
												<label for="cliente" class="fw-bold">Nome Cliente: </label>
												<input type="text" class="form-control" id="cliente"
													name="cliente" value="${R.cliente.nome}" readonly>
											</div>

											<div class="mb-3 col-sm-3">
												<label for="dataIda" class="fw-bold">Data da Ida:</label> <input
													type="date" class="form-control" id="dataIda"
													name="dataIda" value="${R.dataIda}" readonly>
											</div>

											<div class="mb-3 col-sm-3">
												<label for="dataVolta" class="fw-bold">Data da
													Volta:</label> <input type="date" class="form-control"
													id="dataVolta" name="dataVolta" value="${R.dataRetorno}"
													readonly>
											</div>
										</div>

										<div class="row justify-content-center">
											<div class="mb-3 col-sm-3">
												<label for="dest" class="fw-bold">País Destino:</label> <input
													type="text" class="form-control" id="dest" name="dest"
													value="${R.destino.pais}" readonly>
											</div>

											<div class="mb-3 col-sm-3">
												<label for="promo" class="fw-bold">Valor Promo:</label> <input
													type="text" class="form-control" id="promo" name="promo"
													value="${R.promocao.precoPromo}" readonly>
											</div>

											<div class="mb-3 col-sm-3">
												<label for="total" class="fw-bold">Valor Total:</label> <input
													type="text" class="form-control" id="total" name="total"
													value="${R.valor - R.promocao.precoPromo}" readonly>
											</div>
										</div>
										<div class="d-flex justify-content-center">
											<button type="submit" class="btn bg-warning">Editar</button>
											<button type="submit" class="btn ms-2 bg-danger">Excluir</button>
										</div>
										<hr>
										<br>
									</jstl:forEach>
								</div>
								<div role="tabpanel" class="tab-pane" id="promocoes">

									<div class="d-flex justify-content-center my-4">
										<button class="btn btn-info shadow" data-bs-toggle="modal"
											data-bs-target="#modalPromo">Criar Promoção</button>
									</div>

									<jstl:forEach items="${Promos}" var="P">
										<h2>Promoção ${P.idPromocao}</h2>
										<div class="row justify-content-center">
											<div class="mb-3 col-sm-5">
												<label for="preco" class="fw-bold">Preço:</label> <input
													type="text" class="form-control" id="preco" name="preco"
													value="${P.precoPromo}" readonly>
											</div>
											<div class="mb-3 col-sm-5">
												<label for="desconto" class="fw-bold">Validade:</label> <input
													type="date" class="form-control" id="desconto"
													name="desconto" value="${P.validade}" readonly>
											</div>

											<div class="d-flex justify-content-center">
												<button type="submit" data-bs-toggle="modal"
												data-bs-target="#modalPromoEdit${P.idPromocao}" class="btn bg-warning">Editar</button>
												<button type="submit" class="btn ms-2 bg-danger">Excluir</button>
											</div>
										</div>
										<hr>
										<br>

										<div class="modal fade" id="modalPromoEdit${P.idPromocao}" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>

													<div class="modal-body">
														<form action="../edit">
															<input type="hidden" name="operacao" value="editPromo">
															<h2 class="text-center">Cadastrar Promoção</h2>
															<input type="hidden" id="id" name="id"
																class="form-control" value="${P.idPromocao}" />
															<div class="form-group mb-3">
																<label for="preco" class="form-label"> Preço: </label> <input
																	type="text" id="preco" name="preco"
																	class="form-control" value="${P.precoPromo}" />
															</div>

															<div class="form-group mb-3">
																<label for="validade" class="form-label">
																	Validade </label> <input type="date" id="validade"
																	name="validade" class="form-control" value="${P.validade}" />
															</div>

															<button type="submit" class="btn btn-primary">Enviar</button>
															<a class="btn btn-danger" data-bs-dismiss="modal"
																aria-label="Close" style="margin-left: 10px">
																Cancelar </a>
														</form>
													</div>

												</div>
											</div>
										</div>

									</jstl:forEach>

								</div>
								<div role="tabpanel" class="tab-pane" id="flights">

									<div class="d-flex justify-content-center my-4">
										<button class="btn btn-info shadow" data-bs-toggle="modal"
											data-bs-target="#modalDest">Criar Destino</button>
									</div>

									<jstl:forEach items="${Destinos}" var="D">

										<h2>Destino ${D.idDestino}</h2>
										<div class="row justify-content-center">
											<div class="mb-3 col-sm-3">
												<label for="pais" class="fw-bold">País:</label> <input
													type="text" class="form-control" id="pais" name="pais"
													value="${D.pais}" readonly>
											</div>
											<div class="mb-3 col-sm-3">
												<label for="preco" class="fw-bold">Preço:</label> <input
													type="text" class="form-control" id="preco" name="preco"
													value="${D.preco}" readonly>
											</div>

											<div class="mb-3 col-sm-3">
												<label for="duracao" class="fw-bold">Duração:</label> <input
													type="number" step="0.01" class="form-control" id="duracao"
													name="duracao" value="${D.duracao}" readonly>
											</div>

											<div class="d-flex justify-content-center">
												<button type="submit" data-bs-toggle="modal"
													data-bs-target="#modalDestEdit${D.idDestino}"
													class="btn bg-warning">Editar</button>
												<button type="submit" class="btn ms-2 bg-danger">Excluir</button>
											</div>
										</div>
										<hr>
										<br>

										<div class="modal fade" id="modalDestEdit${D.idDestino}"
											tabindex="-1" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>

													<div class="modal-body">
														<form action="../edit">
															<input type="hidden" name="operacao" value="editDest">
															<h2 class="text-center">Cadastrar Destino</h2>
															<input type="hidden" id="id" name="id"
																class="form-control" value="${D.idDestino}" />
															<div class="form-group mb-3">
																<label for="pais" class="form-label"> País </label> <input
																	type="text" id="pais" name="pais" class="form-control"
																	value="${D.pais}" />
															</div>

															<div class="form-group mb-3">
																<label for="preco" class="form-label"> Preço </label> <input
																	type="text" id="preco" name="preco"
																	class="form-control" value="${D.preco}" />
															</div>
															<div class="form-group mb-3">
																<label for="duracao" class="form-label"> Duração
																</label> <input type="text" id="duracao" name="duracao"
																	class="form-control" value="${D.duracao}" />
															</div>

															<button type="submit" class="btn btn-primary">Enviar</button>
															<a data-bs-dismiss="modal" aria-label="Close"
																class="btn btn-danger" style="margin-left: 10px">
																Cancelar </a>
														</form>
													</div>

												</div>
											</div>
										</div>

									</jstl:forEach>

								</div>

								<div role="tabpanel" class="tab-pane" id="clients">

									<div class="d-flex justify-content-center my-4">
										<button class="btn btn-info shadow" data-bs-toggle="modal"
											data-bs-target="#modalCli">Criar Cliente</button>
									</div>

									<jstl:forEach items="${Clientes}" var="C">
										<h2>Cliente ${C.idCliente}</h2>
										<div class="row justify-content-center">
											<div class="mb-3 col-sm-5">
												<label for="nome" class="fw-bold">Nome:</label> <input
													type="text" class="form-control" id="nome" name="nome"
													value="${C.nome}" readonly />
											</div>

											<div class="mb-3 col-sm-5">
												<label for="email" class="fw-bold">Email:</label> <input
													type="email" class="form-control" id="email" name="email"
													value="${C.email}" readonly>
											</div>
										</div>

										<div class="row justify-content-center">
											<div class="mb-3 col-sm-5">
												<label for="senha" class="fw-bold">Senha:</label> <input
													type="text" class="form-control" id="senha" name="senha"
													value="*******" readonly>
											</div>

											<div class="mb-3 col-sm-5">
												<label for="telefone" class="fw-bold">Telefone:</label> <input
													type="text" class="form-control" id="telefone"
													value="${C.telefone}" readonly>
											</div>
										</div>

										<div class="d-flex justify-content-center">
											<button type="submit" data-bs-toggle="modal"
												data-bs-target="#modalCliEdit${C.idCliente}"
												class="btn bg-warning">Editar</button>
											<button type="submit" class="btn ms-2 bg-danger">Excluir</button>
										</div>
										<hr>
										<br>

										<!-- modal editar -->
										<div class="modal fade" id="modalCliEdit${C.idCliente}"
											tabindex="-1" aria-labelledby="exampleModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="btn-close"
															data-bs-dismiss="modal" aria-label="Close"></button>
													</div>

													<div class="modal-body">
														<form action="../edit">
															<input type="hidden" name="operacao" value="editCli">
															<h2 class="text-center">Editar Cliente</h2>
															<input type="hidden" id="id" name="id"
																class="form-control" value="${C.idCliente}" />
															<div class="form-group mb-3">
																<label for="nome" class="form-label"> Nome </label> <input
																	type="text" id="nome" name="nome" class="form-control"
																	value="${C.nome}" />
															</div>

															<div class="form-group mb-3">
																<label for="email" class="form-label"> Email </label> <input
																	type="text" id="email" name="email"
																	class="form-control" value="${C.email}" />
															</div>
															<div class="form-group mb-3">
																<label for="telefone" class="form-label">
																	Telefone </label> <input type="text" id="telefone"
																	name="telefone" class="form-control"
																	value="${C.telefone}" />
															</div>

															<div class="form-group mb-3">
																<label for="senha" class="form-label"> Senha </label> <input
																	type="text" id="senha" name="senha"
																	class="form-control" value="${C.senha}" />
															</div>

															<button type="submit" aria-label="Close"
																data-bs-dismiss="modal" class="btn btn-primary">Enviar</button>
															<a class="btn btn-danger" data-bs-dismiss="modal"
																aria-label="Close" style="margin-left: 10px">
																Cancelar </a>
														</form>
													</div>

												</div>
											</div>
										</div>

									</jstl:forEach>

								</div>


							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Modal Destinos -->
	<div class="modal fade" id="modalDest" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form action="../create">
						<input type="hidden" name="operacao" value="criarDestino">
						<h2 class="text-center">Cadastrar Destino</h2>
						<input type="hidden" id="id" name="id" class="form-control"
							value="" />
						<div class="form-group mb-3">
							<label for="pais" class="form-label"> País </label> <input
								type="text" id="pais" name="pais" class="form-control" value="" />
						</div>

						<div class="form-group mb-3">
							<label for="preco" class="form-label"> Preço </label> <input
								type="text" id="preco" name="preco" class="form-control"
								value="" />
						</div>
						<div class="form-group mb-3">
							<label for="duracao" class="form-label"> Duração </label> <input
								type="text" id="duracao" name="duracao" class="form-control"
								value="" />
						</div>

						<button type="submit" class="btn btn-primary">Enviar</button>
						<a data-bs-dismiss="modal" aria-label="Close"
							class="btn btn-danger" style="margin-left: 10px"> Cancelar </a>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!-- Modal Clientes -->
	<div class="modal fade" id="modalCli" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form action="../create">
						<input type="hidden" name="operacao" value="criarCliente">
						<h2 class="text-center">Cadastrar Cliente</h2>
						<input type="hidden" id="id" name="id" class="form-control"
							value="" />
						<div class="form-group mb-3">
							<label for="nome" class="form-label"> Nome </label> <input
								type="text" id="nome" name="nome" class="form-control" value="" />
						</div>

						<div class="form-group mb-3">
							<label for="email" class="form-label"> Email </label> <input
								type="text" id="email" name="email" class="form-control"
								value="" />
						</div>
						<div class="form-group mb-3">
							<label for="telefone" class="form-label"> Telefone </label> <input
								type="text" id="telefone" name="telefone" class="form-control"
								value="" />
						</div>

						<div class="form-group mb-3">
							<label for="senha" class="form-label"> Senha </label> <input
								type="text" id="senha" name="senha" class="form-control"
								value="" />
						</div>

						<button type="submit" class="btn btn-primary">Enviar</button>
						<a class="btn btn-danger" data-bs-dismiss="modal"
							aria-label="Close" style="margin-left: 10px"> Cancelar </a>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!-- Modal Reservas -->
	<div class="modal fade" id="modalRes" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form action="../create">
						<input type="hidden" name="operacao" value="criarRes">
						<h2 class="text-center">Cadastrar Reserva</h2>
						<input type="hidden" id="id" name="id" class="form-control"
							value="" />
						<div class="form-group mb-3">
							<label for="cliente" class="form-label"> Clientes: </label> <select
								id="cliente" name="cliente" class="form-control">
								<option value="DEFAULT">Escolha um Cliente</option>
								<jstl:forEach items="${Clientes}" var="C">
									<option value="${C.idCliente}">${C.nome}</option>
								</jstl:forEach>
							</select>
						</div>

						<div class="form-group mb-3">
							<label for="promocoes" class="form-label"> Promoções: </label> <select
								id="promocoes" name="promocoes" class="form-control">
								<option value="DEFAULT">Escolha uma Promoção:</option>
								<jstl:forEach items="${Promos}" var="P">
									<option value="${P.idPromocao}">${P.precoPromo}</option>
								</jstl:forEach>
							</select>
						</div>

						<div class="form-group mb-3">
							<label for="destinos" class="form-label"> Destinos: </label> <select
								id="destinos" name="destinos" class="form-control">
								<option value="DEFAULT">Escolha um Destino:</option>
								<jstl:forEach items="${Destinos}" var="D">
									<option value="${D.idDestino}">${D.pais}</option>
								</jstl:forEach>
							</select>
						</div>

						<div class="form-group mb-3">
							<label for="valor" class="form-label"> Valor: </label> <input
								type="text" id="valor" name="valor" class="form-control"
								value="" />
						</div>

						<div class="form-group mb-3">
							<label for="ida" class="form-label"> Data Ida: </label> <input
								type="date" id="ida" name="ida" class="form-control" value="" />
						</div>

						<div class="form-group mb-3">
							<label for="retorn" class="form-label"> Data Volta: </label> <input
								type="date" id="retorn" name="retorn" class="form-control"
								value="" />
						</div>

						<button type="submit" class="btn btn-primary">Enviar</button>
						<a class="btn btn-danger" data-bs-dismiss="modal"
							aria-label="Close" style="margin-left: 10px"> Cancelar </a>
					</form>
				</div>

			</div>
		</div>
	</div>


	<!-- Modal Promoções -->
	<div class="modal fade" id="modalPromo" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form action="../create">
						<input type="hidden" name="operacao" value="criarPromo">
						<h2 class="text-center">Cadastrar Promoção</h2>
						<input type="hidden" id="id" name="id" class="form-control"
							value="" />
						<div class="form-group mb-3">
							<label for="preco" class="form-label"> Preço: </label> <input
								type="text" id="preco" name="preco" class="form-control"
								value="" />
						</div>

						<div class="form-group mb-3">
							<label for="validade" class="form-label"> Validade </label> <input
								type="date" id="validade" name="validade" class="form-control"
								value="" />
						</div>

						<button type="submit" class="btn btn-primary">Enviar</button>
						<a class="btn btn-danger" data-bs-dismiss="modal"
							aria-label="Close" style="margin-left: 10px"> Cancelar </a>
					</form>
				</div>

			</div>
		</div>
	</div>





	<!-- Modal Reservas -->
	<!-- <div class="modal fade"id="reservasModal"tabindex="-1"aria-labelledby="reservasModalLabel"aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"
                        id="staticBackdropLabel">Modal title</h5>
                    <button type="button"class="btn-close"data-bs-dismiss="modal"aria-label="Close"></button>
                </div>

                <div class="modal-body">
                    ...
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"> Close </button>
                    <button type="submit" class="btn btn-primary"> Understood </button>
                </div>
            </div>
        </div>
    </div> -->


	<script src="index.js"></script>

	<a href="#" id="scrollToTopButton" class="scroll-to-top-button"
		title="Voltar ao Topo"><img src="assets/images/home/tst.gif"
		alt=""></a>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
