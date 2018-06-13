<%-- 
    Document   : index
    Created on : 26/05/2018, 17:22:20
    Author     : Thalicia Oliveira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cadastro Cliente</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/adminlte.min.css">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Google Font -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="localhost:8080/Carraws2/logado/menu.jsp" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini">
                        <b>CAR</b></span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg">
                        <b>Carraws</b></span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="localhost:8080/Carraws2/logado/menu.jsp" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Notifications: style can be found in dropdown.less -->

                            <!-- Tasks: style can be found in dropdown.less -->
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="image/avatar.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">${sessionScope.usuarioLogado.usuario} ${sessionScope.usuarioLogado.idlogin}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image --> 
                                    <li class="user-header">
                                        <img src="image/avatar.png" class="img-circle" alt="User Image">
                                        <p>
                                            ${sessionScope.usuarioLogado.usuario}
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Perfil</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="${pageContext.request.contextPath}/logout.jsp" class="btn btn-default btn-flat">Sair</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="image/avatar.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>${sessionScope.usuarioLogado.usuario}</p>
                            <a href="#">
                                <i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Procurar...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">Navegação Principal</li>
                        <li class="active treeview">
                            <a href="#">
                                <i class="fa fa-dashboard"></i>
                                <span>Menu Principal</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">

                                <li>
                                    <a href="/Carraws/logado/Alugueis.jsp">
                                        <i class="fa fa-circle-o"></i> Alugueis</a>
                                </li>
                                <li>
                                    <a href="/Carraws/logado/alugar">
                                        <i class="fa fa-circle-o"></i> Novo Aluguel</a>
                                </li>
                                <li>
                                    <a href="/Carraws/logado/veiculos">
                                        <i class="fa fa-circle-o"></i> Veiculos</a>
                                </li>
                                <c:if test = "${sessionScope.usuarioLogado.nivelAcesso>'0'}">

                                    <li>
                                        <a href="/Carraws/logado/cadastroVeiculo.jsp">
                                            <i class="fa fa-circle-o"></i> Novo Veiculo</a>
                                    </li>
                                </c:if>
                                <c:if test = "${sessionScope.usuarioLogado.nivelAcesso>'0'}">
                                <li>
                                    <a href="/Carraws/logado/Clientes">
                                        <i class="fa fa-circle-o"></i> Clientes</a>
                                </li>
                                </c:if>
                                <c:if test = "${sessionScope.usuarioLogado.nivelAcesso>'0'}">
                                <li>
                                    <a href="/Carraws/logado/cadastroClientes.jsp">
                                        <i class="fa fa-circle-o"></i> Novo Cliente</a>
                                </li>
                                </c:if>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i>
                                <span>Perfil</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-circle-o"></i>Editar</a>
                                </li>
                                <li class="treeview">
                                    <a href="#">
                                        <i class="fa fa-circle-o"></i> Visualizar
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-circle-o"></i>Seu perfil</a>
                                        </li>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-circle-o"></i> Outro Perfil
                                                <span class="pull-right-container">
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>                
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-book"></i>
                                <span>Sobre</span>
                            </a>
                        </li>
                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Cadastro Cliente
                        <small>Novo cliente</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">
                                <i class="fa fa-dashboard"></i>Principal</a>
                        </li>
                        <li class="active">cadastro de cliente</li>
                    </ol>
                </section>
                <br />
                <!-- Main content -->
                <section class="content">
                    <div class="box">


                        <div class="col-md-12">
                            <div class="box">
                                <div class="box box-solid box-danger" >
                                    <div class="box-header with-border" align="center">
                                        <h3 class="box-title">Novo Cliente</h3>
                                    </div>
                                    <div class="box-body">
                                        <div class="form-group">  
                                            <form method="POST" action="inserirCliente">

                                                <label>Nome</label>
                                                <input type="text" class="form-control" name="nome" placeholder="Insira seu nome" required>
                                                <label>CPF</label>
                                                <input type="text" class="form-control" name="cpf" placeholder="Insira seu cpf">
                                                <label>Endereco</label>
                                                <input type="text" class="form-control" name="endereco" placeholder="Insira seu endereco"  required> 
                                                <label>Email</label>
                                                <input type="email"  class="form-control" name="email" placeholder="Insira seu email"  required> 
                                                <label>Estado</label>
                                                <input type="text" class="form-control" name="estado" placeholder="Insira seu estado"  required>     
                                                <label>Cidade</label>
                                                <input type="text" class="form-control" name="cidade" placeholder="Insira sua cidade" required>
                                                <label>CNH</label>
                                                <input type="text" class="form-control" name="cnh" placeholder="Insira o numero da sua carteira de motorista"  required><br />
                                                <p style="color:green">${profilestrength}</p>

                                                <!-- /.input group -->
                                                <button type="submit" name="bOK" class="btn btn-primary">Cadastrar</button>
                                            </form>
                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- /.row -->
                    <!-- Main row -->
                    <!-- /.row (main row) -->

                </section>






                <!-- <script src="dist/vendors.bundle.js"></script> -->
                <script src="${pageContext.request.contextPath}/dist/adminlte.min.js"></script>

                <script>
                    var body = $('body');
                    console.log(body);
                </script>
                </body>

                </html>