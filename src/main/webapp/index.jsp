<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- META DATA -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>NASA Airline</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"/>

    <!--font-family-->
    <link href="https://fonts.googleapis.com/css?family=Rufina:400,700"
          rel="stylesheet" />

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900"
          rel="stylesheet" />

    <link rel="stylesheet"
          href="assets/css/style.css" />
          
    <link rel="stylesheet"
          href="assets/css/responsive.css" />
</head>

<body>
    
    <jsp:include page="./components/nav.jsp">
			<jsp:param name="main" value="index.jsp" />
			<jsp:param name="destinos" value="destinos.jsp" />
			<jsp:param name="promocoes" value="promocoes.jsp" />
			<jsp:param name="contato" value="contato.jsp" />
			<jsp:param name="cadastro" value="views/cadastros" />
	</jsp:include>

    <!-- Section: About Us -->
    <section id="home"
             class="about-us">
        <div class="container">
            <div class="about-us-content">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="single-about-us">
                            <div class="about-us-txt">
                                <h2>
                                    Explore as Belezas do Mundo Agora Mesmo!
                                </h2>
                                <div class="about-btn">
                                    <a href="login.html">
                                        <button class="btn about-view">
                                            Explorar
                                        </button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-0">
                        <div class="single-about-us">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Section: Services -->
    <section id="service"
             class="service">
        <div class="container">
            <div class="service-counter text-center">
                <div class="row justify-content-center">
                    <div class="col-md-4 col-sm-4">
                        <div class="single-service-box">
                            <div class="service-img">
                                <img src="assets/IMGs/service/s1.png"
                                     alt="service-icon" />
                            </div>
                            <div class="service-content">
                                <h2><a href="#">pacotes turísticos incríveis</a></h2>
                                <p>Descubra aventuras inesquecíveis com pacotes turísticos personalizados.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="single-service-box">
                            <div class="service-img">
                                <img src="assets/IMGs/service/s2.png"
                                     alt="service-icon" />
                            </div>
                            <div class="service-content">
                                <h2><a href="#">Reservar Hotéis de 1º Classe</a></h2>
                                <p>Desfrute de luxo e conforto excepcionais ao escolher acomodações de primeira classe.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <div class="single-service-box">
                            <div class="service-img">
                                <img src="assets/IMGs/service/s3.png"
                                     alt="service-icon" />
                            </div>
                            <div class="service-content">
                                <h2><a href="#">Reserva de Voo Online</a></h2>
                                <p style="padding-left: 1em;">Facilite suas viagens com reservas de voos convenientes e
                                    flexíveis.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!--galley start-->
    <section id="gallery"
             class="gallery">
        <div class="container"
             style="max-width: 1140px !important;">
            <div class="gallery-details">
                <div class="gallary-header text-center">
                    <h2>
                        Melhores Destinos
                    </h2>
                    <p>
                        Descubra os destinos mais incríveis para suas próximas aventuras!
                    </p>
                </div><!--/.gallery-header-->
                <div class="gallery-box">
                    <div class="gallery-content">
                        <div class="filtr-container">
                            <div class="row">
                                <div class="col-md-6 d-flex justify-content-center">
                                    <div class="filtr-item">
                                        <img src="assets/IMGs/gallary/ga01 (1).jpg"
                                             alt="portfolio image" />
                                        <div class="item-title">
                                            <a href="#">
                                                china
                                            </a>
                                            <p><span>20 tours</span><span>15 places</span></p>
                                        </div><!-- /.item-title -->
                                    </div><!-- /.filtr-item -->
                                </div><!-- /.col -->

                                <div class="col-md-6 d-flex justify-content-center">
                                    <div class="filtr-item">
                                        <img src="assets/IMGs/gallary/ga02.jpg"
                                             alt="portfolio image" />
                                        <div class="item-title">
                                            <a href="#">
                                                venuzuala
                                            </a>
                                            <p><span>12 tours</span><span>9 places</span></p>
                                        </div> <!-- /.item-title-->
                                    </div><!-- /.filtr-item -->
                                </div><!-- /.col -->

                                <div class="col-md-4 d-flex justify-content-center">
                                    <div class="filtr-item">
                                        <img src="assets/IMGs/gallary/gall3.jpg"
                                             alt="portfolio image" />
                                        <div class="item-title">
                                            <a href="#">
                                                brazil
                                            </a>
                                            <p><span>25 tours</span><span>10 places</span></p>
                                        </div><!-- /.item-title -->
                                    </div><!-- /.filtr-item -->
                                </div><!-- /.col -->

                                <div class="col-md-4 d-flex justify-content-center">
                                    <div class="filtr-item">
                                        <img src="assets/IMGs/gallary/gall4.jpg"
                                             alt="portfolio image" />
                                        <div class="item-title">
                                            <a href="#">
                                                australia
                                            </a>
                                            <p><span>18 tours</span><span>9 places</span></p>
                                        </div> <!-- /.item-title-->
                                    </div><!-- /.filtr-item -->
                                </div><!-- /.col -->

                                <div class="col-md-4 d-flex justify-content-center">
                                    <div class="filtr-item">
                                        <img src="assets/IMGs/gallary/gall5.jpg"
                                             alt="portfolio image" />
                                        <div class="item-title">
                                            <a href="#">
                                                Chile
                                            </a>
                                            <p><span>14 tours</span><span>12 places</span></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>

    <!-- Section: Subscribe -->
    <section id="subs"
             class="subscribe">
        <div class="container">
            <div class="subscribe-title text-center">
                <h2>Junte-se aos nossos inscritos para receber todas as atualizações</h2>
                <p>Inscreva-se agora. Vamos-lhe enviar a melhor oferta para a sua viagem</p>
            </div>
            <form>
                <div class="row justify-content-center">
                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-sm-offset-2">
                        <div class="custom-input-group">
                            <input type="email"
                                   class="form-control"
                                   placeholder="Seu Email">
                            <button class="appsLand-btn subscribe-btn">Inscreva-se</button>
                            <div class="clearfix"></div>
                            <i class="fa fa-envelope"></i>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <jsp:include page="./components/footer.jsp"></jsp:include>

    <!-- Scripts -->
    <script src="assets/js/index.js"></script>
    <a href="#"
       id="scrollToTopButton"
       class="scroll-to-top-button"
       title="Voltar ao Topo"><img src="assets/IMGs/home/tst.gif"
             alt=""></a>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>