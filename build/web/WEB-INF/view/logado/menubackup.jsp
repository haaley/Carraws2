<%-- 
    Document   : index
    Created on : 26/05/2018, 17:22:20
    Author     : Thalicia Oliveira
--%>

<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Map"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>AdminLTE 2 | Dashboard</title>
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

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="index2.html" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini">
                        <b>CAR</b>RAWS</span>
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
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning">1</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 1 notifications</li>
                                    <li>
                                        <!-- inner menu: contains the actual data -->
                                        <ul class="menu">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-users text-aqua"></i> 5 new members joined today
                                                </a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li class="footer">
                                        <a href="#">View all</a>
                                    </li>
                                </ul>
                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->
                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="img/avatar.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs">${sessionScope.usuarioLogado.usuario} ${sessionScope.usuarioLogado.idlogin}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="img/avatar.png" class="img-circle" alt="User Image">

                                        <p>
                                            ${sessionScope.usuarioLogado.usuario}
                                            <small>Membro Desde:</small>
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
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a href="#" data-toggle="control-sidebar">
                                    <i class="fa fa-gears"></i>
                                </a>
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
                            <img src="img/avatar.png" class="img-circle" alt="User Image">
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
                            <input type="text" name="q" class="form-control" placeholder="Search...">
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
                                <li class="active">
                                    <a href="novoVeiculo.jsp">
                                        <i class="fa fa-circle-o"></i> Alugueis</a>
                                </li>
                                <li>
                                    <a href="index2.html">
                                        <i class="fa fa-circle-o"></i> Novo Aluguel</a>
                                </li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-share"></i>
                                <span>Multilevel</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-circle-o"></i> Level One</a>
                                </li>
                                <li class="treeview">
                                    <a href="#">
                                        <i class="fa fa-circle-o"></i> Level One
                                        <span class="pull-right-container">
                                            <i class="fa fa-angle-left pull-right"></i>
                                        </span>
                                    </a>
                                    <ul class="treeview-menu">
                                        <li>
                                            <a href="#">
                                                <i class="fa fa-circle-o"></i> Level Two</a>
                                        </li>
                                        <li class="treeview">
                                            <a href="#">
                                                <i class="fa fa-circle-o"></i> Level Two
                                                <span class="pull-right-container">
                                                    <i class="fa fa-angle-left pull-right"></i>
                                                </span>
                                            </a>
                                            <ul class="treeview-menu">
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-circle-o"></i> Level Three</a>
                                                </li>
                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-circle-o"></i> Level Three</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-circle-o"></i> Level One</a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="https://adminlte.io/docs">
                                <i class="fa fa-book"></i>
                                <span>Documentation</span>
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
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">
                                <i class="fa fa-dashboard"></i> Home</a>
                        </li>
                        <li class="active">Dashboard</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">

                    <div class="col-md-6">
                        <div class="box box-solid box-success">
                            <div class="box-header">
                                <h3 class="box-title">Novo Aluguel</h3>
                            </div>
                            <div class="box-body">
                                <form>
                                    <div class="form-group">                                            
                                        <label for="text">Nome Completo</label>
                                        <input type="text" class="form-control" id="nome" placeholder="Insira o Nome" value="${sessionScope.usuarioLogado.usuario}" required data-fv-notempty-message="The password is required">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Insira o Email" required data-fv-notempty-message="The password is required">
                                        <label for="exampleInputEmail1">Endereço</label>
                                        <input type="text" class="form-control" id="endereco" placeholder="Insira o Endereço"  required>
                                        <label for="exampleInputEmail1">Endereço</label>
                                        <input type="text" class="form-control" id="endereco" placeholder="Insira o Endereço"  required>
                                        <form method="POST" action="listarVeiculos">
                                            <input type="select" class="form-control">
                                            <c:forEach items="${list}" var="lista">
                                                <option value="${lista}">
                                                    ${lista}
                                                </option>
                                            </c:forEach>
                                            </input>


                                            <input type="submit" value="Listar">
                                        </form>


                                        <!-- /.input group -->
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                </form>
                            </div>


                        </div>
                    </div>
            </div>
<form method="POST " action="ListarAluguel">
            <div class="col-md-6">
                <div class="box box-solid box-success">
                    <div class="box-header">
                        <h3 class="box-title">Novo Aluguel</h3>
                    </div>
                    
                    <div class="box-body">
                        <table>
                            <thead>
                                <tr>
                                    <th>Usuario</th>
                                    <th>Veiculo</th>
                                    <th>Dias</th>
                                    <th>Custo Total</th>
                                </tr>
                            </thead>
                            <tbody>
                   <c:forEach var="lista" items="${lista}">
                <tr>
                    <td><c:out value="${lista.nome}"  /></td>
                    <td><c:out value="${lista.modelo}" /></td>
                    <td><c:out value="${lista.dias}" /></td>
                    <td><c:out value="${lista.custo}" /></td>
                </tr>
                 </c:forEach>

                     
                                </tbody>
                        </table>

                        <input type="submit" value="Listar">
                       

                    </div>




                </div>


            </div>
     </form>

            <div class="col-lg-3 col-xs-6">
                <!-- small box -->

                <div class="inner">

                    <form class="login-form" method="POST" action="novoVeiculo">


                        <c:if test="${mensagens.existeErros}">
                            <div id="erro">
                                <ul>
                                    <c:forEach var="erro" items="${mensagens.erros}">
                                        <li> ${erro} </li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </c:if>




                        <input type="text" placeholder="Placa" name="placa" required/>
                        <input type="text" placeholder="Modelo " name="modelo" required/>
                        <input type="text" placeholder="Marca" name="marca" required/>
                        <input type="year" placeholder="Ano" name="ano" required/>
                        <input type="text" placeholder="Cor" name="cor" required/>
                        <input type="number" placeholder="Valor" name="valor" required/>
                        <p style="color:green">${profilestrength}</p>



                        <input type="submit" name="bOK" value="Entrar"/>


                    </form>

                    <form class="login-form" method="POST" action="NovoAluguel">


                        <c:if test="${mensagens.existeErros}">
                            <div id="erro">
                                <ul>
                                    <c:forEach var="erro" items="${mensagens.erros}">
                                        <li> ${erro} </li>
                                        </c:forEach>
                                </ul>
                            </div>
                        </c:if>




                        <input type="number" placeholder="Cliente ID" name="cliente" required/>
                        <input type="Number" placeholder="Veiculo ID" name="veiculo" required/>
                        <input type="Number" placeholder="Dias" name="dias" required/>
                        <input type="Number" placeholder="Custo Total" name="custoTotal" required/>

                        <p style="color:green">${novoAluguel}</p>



                        <input type="submit" name="bOK" value="Entrar"/>


                    </form>


                    <div>

                        <form method="POST" action="listarVeiculos">
                            <select id="food" name="fooditems">
                                <c:forEach items="${list}" var="lista">
                                    <option value="${lista}">
                                        ${lista}
                                    </option>
                                </c:forEach>
                            </select>

                            <input type="submit" value="Listar">
                        </form>






                        </section>
                        <!-- /.content -->
                    </div>
                    <!-- /.content-wrapper -->
                    <footer class="main-footer">
                        <div class="pull-right hidden-xs">
                            <b>Version</b> 2.4.0
                        </div>
                        <strong>Copyright &copy; 2014-2016
                            <a href="https://adminlte.io">Almsaeed Studio</a>.</strong> All rights reserved.
                    </footer>

                    <!-- Control Sidebar -->
                    <aside class="control-sidebar control-sidebar-dark">
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <form method="post">
                                <h3 class="control-sidebar-heading">General Settings</h3>

                                <div class="form-group">
                                    <label class="control-sidebar-subheading">
                                        Report panel usage
                                        <input type="checkbox" class="pull-right" checked>
                                    </label>

                                    <p>
                                        Some information about this general settings option
                                    </p>
                                </div>
                                <!-- /.form-group -->

                                <div class="form-group">
                                    <label class="control-sidebar-subheading">
                                        Allow mail redirect
                                        <input type="checkbox" class="pull-right" checked>
                                    </label>

                                    <p>
                                        Other sets of options are available
                                    </p>
                                </div>
                                <!-- /.form-group -->

                                <div class="form-group">
                                    <label class="control-sidebar-subheading">
                                        Expose author name in posts
                                        <input type="checkbox" class="pull-right" checked>
                                    </label>

                                    <p>
                                        Allow the user to show his name in blog posts
                                    </p>
                                </div>
                                <!-- /.form-group -->
                            </form>
                            <!-- /.tab-pane -->
                        </div>
                    </aside>
                    <!-- /.control-sidebar -->
                    <!-- Add the sidebar's background. This div must be placed
                       immediately after the control sidebar -->
                    <div class="control-sidebar-bg"></div>
                </div>
                <!-- ./wrapper -->

                <!-- <script src="dist/vendors.bundle.js"></script> -->
                <script src="${pageContext.request.contextPath}/dist/adminlte.min.js"></script>

                <script>
                    var body = $('body');
                    console.log(body);
                </script>
                </body>

                </html>