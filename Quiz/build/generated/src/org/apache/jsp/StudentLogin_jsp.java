package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.*;

public final class StudentLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

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

        
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
