<%-- 
    Document   : AddQuestion
    Created on : 10 Jan, 2022, 10:29:49 PM
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
            option{
                padding: 5px;
            }
      
            body{
                width: 100%;
                height: 100vh;	
                background-image: url("image/whitebg.jpg");
                background-repeat: no-repeat, no-repeat;
                background-size: cover;
                background-position: center;

            }
        </style>
    </head>
    <body>

        <%
            String tname = request.getParameter("test");
        %>

        <!--        //Navbar-->
        <nav class="navbar navbar-inverse bg-light ">
            <div class="container-fluid">
                <div class="navbar-header">
                    <span class="navbar-brand mb-0 h1">Adding Question for Test <%=tname%></span>

                </div>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <span class="navbar-brand mb-0 h2"><a href="LogoutStudent"><span class="glyphicon glyphicon-log-in"></span> Logout</a></span>
                    </li>
                </ul>
            </div>
        </nav>

        <!--        Body-->

        <div class="container" style="margin-top: 5%;">
            <form action="QuestionInsert">
                <div class="row">
                    <div class="col-sm-2">Question: <input type="text" name="Question"></div>
                    <div class="col-sm-2">Option A <input type="text" name="option1"></div>
                    <div class="col-sm-2">Option B <input type="text" name="option2"></div>
                    <div class="col-sm-2">Option C <input type="text" name="option3"></div>
                    <div class="col-sm-2">Option D <input type="text" name="option4"></div>


                    <div class="col-sm-2">Answer: <br>     
                        <select name="answer" style="padding: 3px;">
                            <option value="a">a</option>
                            <option value="b">b</option>
                            <option value="c">c</option>
                            <option value="d">d</option>
                        </select>
                    </div>
                    <input type="hidden" name="test" value="<%=tname%>">
                </div>




                <div class="row">
                    <input type="submit"  value="Done">
                    <!--                <a href="QuestionInsert"></a>    -->
                    <input type="button" onclick="location.href = 'AdminPanel.jsp'" value="Home" class="btn btn-outline-success">    
                    <input type="button" onclick="location.href = 'QuestionList.jsp?test=<%=tname%>'" value="Back" class="btn btn-outline-danger">

                </div>

                <div class="row">
                    <font color="red" >
                    <%
                        if (request.getParameter("msg2") != null) {
                            out.print(request.getParameter("msg2"));
                        }
                    %>
                    </font>
                    <font color="green" >
                    <%
                        if (request.getParameter("msg1") != null) {
                            out.print(request.getParameter("msg1"));
                        }
                    %>
                    </font>
                </div>

            </form>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>
</html>
