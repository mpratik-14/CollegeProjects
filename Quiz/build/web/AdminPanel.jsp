<%-- 
    Document   : AdminPanel
    Created on : 10 Jan, 2022, 9:50:40 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <style>
            body{
                width: 100%;
                height: 100vh;	
                background-image: url("image/stdins.jpg");
                background-repeat: no-repeat, no-repeat;
                background-size: cover;
                background-position: center;

            }
            .row{
                color: wheat;
            }

            input[type="button"]{
                background: rgba(155,155,155,0.4);

            }

        </style>
    </head>
    <body>

        <!--        //Navbar-->
        <nav class="navbar navbar-inverse bg-light ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <span class="navbar-brand mb-0 h1">Welcome Admin</span>

                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <span class="navbar-brand mb-0 h2"><a href="LogoutAdmin"><span class="glyphicon glyphicon-log-in"></span> Logout</a></span>
                    </li>
                </ul>
            </div>
        </nav>

        <!--Body-->
        <div class="container">
            <div class="row" style="margin: 6%;padding: 10px;">
                <div class="col-md-6">
                    <center><input onclick="location.href = 'StudentList.jsp';" type="button" value="Add/Update Student Record" class="btn btn-outline-primary btn-lg btn-block"></center> 
                </div>

                <div class="col-md-6">
                    <center><input onclick="location.href = 'InstructionList.jsp';" type="button" value="Add/Update Test Instructions" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>
            </div>
            <div class="row" style="margin: 6%;padding: 10px;">
                <div class="col-sm-6" style="user-select: auto;margin-bottom: 20px;">
                    <center><input onclick="location.href = 'QuestionList.jsp?test=java'"type="button" value="Add/Update Java Question" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>

                <div class="col-sm-6" >
                    <center><input onclick="location.href = 'QuestionList.jsp?test=web'"type="button" value="Add/Update Web Tech Question" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>

                <div class="col-sm-6" style="user-select: auto;margin-bottom: 20px;">
                    <center><input onclick="location.href = 'QuestionList.jsp?test=database'"type="button" value="Add/Update Database Question" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>

                <div class="col-sm-6">
                    <center><input onclick="location.href = 'QuestionList.jsp?test=daa'"type="button" value="Add/Update DAA Question" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>

                <div class="col-sm-6" style=" margin-bottom: 20px;">
                    <center><input onclick="location.href = 'QuestionList.jsp?test=bs'"type="button" value="Add/Update BS Question" class="btn btn-outline-primary btn-lg btn-block"></center>
                </div>

            </div>
        </div>



        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
