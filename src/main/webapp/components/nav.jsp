<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <nav class="navbar navbar-expand-lg navbar-light bg-light"
         style="margin-bottom: 0; background-color: #00d9ff0e !important;">
        <div class="container-fluid">
            <a class="img-thumbmail"
               href="#">
                <img src="assets/IMGs/home/logo.webp"
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
                           href="<%=request.getParameter("main")%>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="<%=request.getParameter("destinos")%>">Destinos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="<%=request.getParameter("promocoes")%>">Promoções</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="<%=request.getParameter("contato")%>">Contato</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link"
                           href="<%=request.getParameter("cadastro")%>">Cadastros</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>