<%-- 
    Document   : AdminLogin
    Created on : 10 Jan, 2022, 9:40:08 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Form</title>
        <link rel ="stylesheet" type="text/css" href="css/newcss.css">
    </head>
    <body>
         <div class="wrapper fadeInDown">
            <div id ="formContent">

                <h2 class="active">Admin Sign in Page</h2>
                <div class ="fadeIn first"> </div>


                <form action ="ValidateAdmin" method="post">
                    <input type="text"  class="fadeIn second" name="uname" placeholder="Enter your Name"/>
                    <input type="password"  class="fadeIn third" name="pass" placeholder="password"/>
                    <input type="submit" class="fadeIn fourth" value="Login"/>
                    <a href ="index.html">Exit</a>



                </form>
            </div>
        </div>
    </body>
</html>
