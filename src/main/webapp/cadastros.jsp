<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible"
          content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700"
          rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
          rel="stylesheet" />

    <!-- TITLE OF SITE -->
    <title>NASA Airline</title>

    <!--style.css-->
    <link rel="stylesheet"
          href="assets/css/style.css" />

    <!--responsive.css-->
    <link rel="stylesheet"
          href="assets/css/responsive.css" />

</head>

<body>
    
    <jsp:include page="./components/nav.jsp">
			<jsp:param name="main" value="index.jsp" />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="cadastro" value="cadastros.jsp" />
	</jsp:include>
	
    <!--travel-box start-->
    <section class="travel-box">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="single-travel-boxes">
                        <div id="desc-tabs" class="desc-tabs flex-column">
                            <ul class="nav nav-tabs d-flex justify-content-center flex-wrap" role="tablist" id="travel-tabs">
                                <li role="presentation" class="active">
                                    <a href="#reservas" aria-controls="reservas" role="tab" data-bs-toggle="tab">
                                        <i class="fa fa-tree"></i> Reservas
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#promocoes" aria-controls="promocoes" role="tab" data-bs-toggle="tab">
                                        <i class="fa fa-calculator"></i>Promoções
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#flights" aria-controls="flights" role="tab" data-bs-toggle="tab">
                                        <i class="fa fa-plane"></i> Destinos
                                    </a>
                                </li>
                                <li role="presentation">
                                    <a href="#clients" aria-controls="clients" role="tab" data-bs-toggle="tab">
                                        <i class="fa fa-address-card"></i> Clientes
                                    </a>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane" id="reservas">
                                    <form>
                                        <div class="mb-3 col-sm-10">
                                            <label for="valor" class="fw-bold">Valor:</label>
                                            <input type="text" class="form-control" id="valor" name="valor" placeholder="Informe o valor">
                                        </div>

                                        <div class="mb-3 col-sm-10">
                                            <label for="dataIda" class="fw-bold">Data da Ida:</label>
                                            <input type="date" class="form-control" id="dataIda" name="dataIda" placeholder="Informe a data de ida">
                                        </div>

                                        <div class="mb-3 col-sm-10">
                                            <label for="dataVolta" class="fw-bold">Data da Volta:</label>
                                            <input type="date" class="form-control" id="dataVolta" name="dataVolta" placeholder="Informe a data de Volta">
                                        </div>
                                        
                                        <div class="d-flex justify-content-center">
                                            <button type="submit" class="btn btn-primary">Aplicar Promoção</button>
                                            <button type="submit" class="btn btn-primary ms-2">Aplicar Promoção</button>
                                        </div>
                                    </form>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="promocoes">
                                    <form action="" method="post">
                                        <div class="mb-3 col-sm-10">
                                            <label for="preco" class="fw-bold">Preço:</label>
                                            <input type="text" class="form-control" id="preco" name="preco" placeholder="Informe o Preço">
                                        </div>
                                        <div class="mb-3 col-sm-10">
                                            <label for="desconto" class="fw-bold">Validade:</label>
                                            <input type="date" class="form-control" id="desconto" name="desconto" placeholder="Informe a Validade">
                                        </div>
                                        
                                        <div class="d-flex justify-content-center">
                                            <button type="submit" class="btn btn-primary">Aplicar Promoção</button>
                                            <button type="submit" class="btn btn-primary ms-2">Aplicar Promoção</button>
                                        </div>
                                    </form>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="flights">
                                    <form action="" method="post">
                                        <div class="mb-3 col-sm-10">
                                            <label for="pais" class="fw-bold">País:</label>
                                            <input type="text" class="form-control" id="pais" name="pais" placeholder="Informe o País">
                                        </div>
                                        <div class="mb-3 col-sm-10">
                                            <label for="preco" class="fw-bold">Preço:</label>
                                            <input type="text" class="form-control" id="preco" name="preco" placeholder="Informe o Preço">
                                        </div>

                                        <div class="mb-3 col-sm-10">
                                            <label for="duracao" class="fw-bold">Duração:</label>
                                            <input type="number" class="form-control" id="duracao" name="duracao" placeholder="Informe a Duração">
                                        </div>
                                        
                                        <div class="d-flex justify-content-center">
                                            <button type="submit" class="btn btn-primary">Aplicar Promoção</button>
                                            <button type="submit" class="btn btn-primary ms-2">Aplicar Promoção</button>
                                        </div>
                                    </form>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="clients">
                                    <form action="" method="post">
                                        <div class="mb-3 col-sm-10">
                                            <label for="nome" class="fw-bold">Nome:</label>
                                            <input type="text" class="form-control" id="nome" name="nome" placeholder="Informe Seu Nome">
                                        </div>

                                        <div class="mb-3 col-sm-10">
                                            <label for="email" class="fw-bold">Email:</label>
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Informe Seu Email">
                                        </div>
                                        
                                        <div class="mb-3 col-sm-10">
                                            <label for="senha" class="fw-bold">Senha:</label>
                                            <input type="text" class="form-control" id="senha" name="senha" placeholder="Informe Sua Senha">
                                        </div>

                                        <div class="mb-3 col-sm-10">
                                            <label for="telefone" class="fw-bold">Telefone:</label>
                                            <input type="text" class="form-control" id="telefone" name="telefone" placeholder="Informe Seu Telefone">
                                        </div>

                                        <div class="d-flex justify-content-center">
                                            <button type="submit" class="btn btn-primary">Aplicar Promoção</button>
                                            <button type="submit" class="btn btn-primary ms-2">Aplicar Promoção</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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


    <script src="assets/js/index.js"></script>

    <a href="#"
       id="scrollToTopButton"
       class="scroll-to-top-button"
       title="Voltar ao Topo"><img src="assets/images/home/tst.gif"
             alt=""></a>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>
