<%-- 
    Document   : deletequestion
    Created on : 10 Jan, 2022, 10:35:15 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DB.*" %>
<%@page import="model.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String tname = request.getParameter("test");
            String question = request.getParameter("ques");

            Questions q = new Questions();
            q.setQuestion(question);

            int status = -1;
            if (tname.equals("java")) {
                status = QuestionsDao.deleteRecord(q);
            }
            if (tname.equals("web")) {
                status = WebQuestionDao.deleteRecord(q);
            }
            if (tname.equals("database")) {
                status = DatabaseQuestionDao.deleteRecord(q);
            }
            if (tname.equals("daa")) {
                status = DaaQuestionDao.deleteRecord(q);
            }
            if (tname.equals("bs")) {
                status = BsQuestionDao.deleteRecord(q);
            }

            if (status > 0) {
                response.sendRedirect("QuestionList.jsp?test=" + tname);
            } else {
                out.print("Error");
            }
        %>
    </body>
</html>
