package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AdminLogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login Form</title>\n");
      out.write("        <link rel =\"stylesheet\" type=\"text/css\" href=\"css/newcss.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"wrapper fadeInDown\">\n");
      out.write("            <div id =\"formContent\">\n");
      out.write("\n");
      out.write("                <h2 class=\"active\">Admin Sign in Page</h2>\n");
      out.write("                <div class =\"fadeIn first\"> </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <form action =\"ValidateAdmin\" method=\"post\">\n");
      out.write("                    <input type=\"text\" id=\"login\" class=\"fadeIn second\" name=\"Name\" placeholder=\"Enter your Name\"/>\n");
      out.write("                    <input type=\"password\" id=\"password\" class=\"fadeIn third\" name=\"password\" placeholder=\"password\"/>\n");
      out.write("                    <input type=\"submit\" class=\"fadeIn fourth\" value=\"login\"/>\n");
      out.write("                    <a href =\"forget.jsp\">Forgot password?</a>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
