<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>

        <title>CarRaws RentalCar</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
         <div class="login-page">
            <img src="https://i.imgur.com/aKbfz7g.png"  width="360" height="190"><br /><br />
           

            
  <div class="form" >
    <form class="login-form" method="post" action="index.jsp">
        
        
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
           
                    <input type="text" placeholder="Login" name="login"
                               value="${param.login}"/>
                </tr>
                <tr>
                   
                    <input type="password" placeholder="Senha" name="senha" />
                </tr>
                <tr>
                    
                        <input type="submit" name="bOK" value="Entrar"/>
                  
                </tr>
            </table>
        </form>
   </div>
            

            
  </div>       
    </body>
</html>
