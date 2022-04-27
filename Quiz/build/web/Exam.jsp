<%-- 
    Document   : Exam
    Created on : 10 Jan, 2022, 10:30:46 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String tname = request.getParameter("test");

            String OriginalQuestion = request.getParameter("quesoriginal");
            String newQuestion = request.getParameter("quesmodified");
            String opta = request.getParameter("opta");
            String optb = request.getParameter("optb");
            String optc = request.getParameter("optc");
            String optd = request.getParameter("optd");
            String ans = request.getParameter("ans");

            int status = -1;
            if (tname.equals("java")) {
                status = QuestionsDao.doUpdateNowRecord(OriginalQuestion, newQuestion, opta, optb, optc, optd, ans);
            }
            if (tname.equals("web")) {
                status = WebQuestionDao.doUpdateNowRecord(OriginalQuestion, newQuestion, opta, optb, optc, optd, ans);
            }
            if (tname.equals("database")) {
                status = DatabaseQuestionDao.doUpdateNowRecord(OriginalQuestion, newQuestion, opta, optb, optc, optd, ans);
            }
            if (tname.equals("daa")) {
                status = DaaQuestionDao.doUpdateNowRecord(OriginalQuestion, newQuestion, opta, optb, optc, optd, ans);
            }
            if (tname.equals("bs")) {
                status = BsQuestionDao.doUpdateNowRecord(OriginalQuestion, newQuestion, opta, optb, optc, optd, ans);
            }

            if (status > 0) {
                response.sendRedirect("QuestionList.jsp?test=" + tname);
            } else if (status == -1) {
                out.print("error from databse");

            } else {
                out.print("excepion occured");
            }

        %>
    </body>
</html>
