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
        <title>Cadastro Veiculo</title>
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
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
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
                                <li>
                                    <a href="/Carraws/logado/cadastroVeiculo.jsp">
                                        <i class="fa fa-circle-o"></i> Novo Veiculo</a>
                                </li>
                                <li>
                                    <a href="/Carraws/logado/Clientes">
                                        <i class="fa fa-circle-o"></i> Clientes</a>
                                </li>
                                <li>
                                    <a href="/Carraws/logado/cadastroClientes.jsp">
                                        <i class="fa fa-circle-o"></i> Novo Cliente</a>
                                </li>
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
                        Cadastro de Veiculo
                        <small>Novo veiculo</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">
                                <i class="fa fa-dashboard"></i>Principal</a>
                        </li>
                        <li class="active">cadastro de veiculo</li>
                    </ol>
                </section>
                <br />
                <!-- Main content -->
                <section class="content">


                    <div class="col-md-7 ">
                        <div class="box box-solid box-success" >
                            <div class="box-header box-header with-border 11" align="center">
                                <h3 class="box-title">Novo Veiculo</h3>
                                
                                <h3> <p style="color:green">${novoAluguel}</p></h3>
                            </div>
                            <div class="box-body">

                                <div class="form-group"> 
                                    <form method="POST" action="novoVeiculo">
                                        <label>Placa</label>
                                        <input type="text" class="form-control" name="placa" placeholder="Insira a placa" required>
                                        <label>Modelo</label>
                                        <input type="text" class="form-control" name="modelo" placeholder="Insira o Modelo">
                                        <label>Marca</label>
                                        <input type="text" class="form-control" name="marca" placeholder="Insira a Marca"  required> 
                                        <label>Ano</label>
                                        <input type="number"  width="60" height="60" class="form-control" name="ano" placeholder="Insira o Ano"  required> 
                                        <label>Cor</label>
                                        <select class="form-control" name="cor">
                                            <option>Escolha uma cor</option>
                                            <option>BRANCO</option>
                                            <option>VERMELHO</option>
                                            <option>PRETO</option>
                                            <option>VERDE</option>
                                            <option>PRATA</option>
                                            <option>VINHO</option>
                                            <option>AZUL</option>
                                            <option>AMARELO</option>                     
                                        </select> 

                                        <label style="margin: 10px 0 10px">Disponibilidade</label>
                                        <input type="checkbox" style="margin-left: 8px; " name="disponibilidade"><br /> 
                                        <label>Valor</label>
                                        <input type="number" class="form-control" name="valor" placeholder="Insira o Endereço"  required> <br />


                                        <!-- /.input group -->
                                        <button type="submit" name="bOK" class="btn btn-primary">Cadastrar</button>
                                    </form>
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