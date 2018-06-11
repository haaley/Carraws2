<%-- 
    Document   : cadastro
    Created on : 28/05/2018, 16:43:52
    Author     : Airon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>Cadastro Usuário</title>
    </head>
    <body>
        <div class="login-page">
            <img src="https://i.imgur.com/aKbfz7g.png" width="360" height="190"><br /><br />
 <div class="form" >
    <form class="login-form" method="post" action="cadastro.jsp">
                                      <c:if test="${mensagens.existeErros}">
            <div id="erro">
                <ul>
                    <c:forEach var="erro" items="${mensagens.erros}">
                        <li> ${erro} </li>
                        </c:forEach>
                </ul>
            </div>
        </c:if>
            <table>

                <tr>
                    <input type="text" placeholder="Nome" name="nome" />
                    <input type="text" placeholder="Usuario" name="usuario"
                               value="${param.login}"/>
                     <input type="email" placeholder="E-mail" name="email" />
                </tr>
                <tr>
                   
                    <input type="password" placeholder="Senha" name="senha" />
                   
                </tr>
                <tr>
                    
                        <input type="submit" name="bOK" value="Cadastrar"/>
                  
                </tr>
            </table>
        </form>
   </div>
        </div>
    </body>
</html>
