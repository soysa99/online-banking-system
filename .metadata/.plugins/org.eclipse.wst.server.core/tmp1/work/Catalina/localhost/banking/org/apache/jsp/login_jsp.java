/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.96
 * Generated at: 2024-12-26 19:47:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Login Form</title>\r\n");
      out.write("    <!-- Bootstrap CSS -->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"assets/style.css\">\r\n");
      out.write("    <link href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("        body, html {\r\n");
      out.write("            height: 100%; \r\n");
      out.write("            margin: 0; \r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        body {\r\n");
      out.write("            background-image: url('img/pp.jpeg');\r\n");
      out.write("            background-size: cover; \r\n");
      out.write("            background-position: center; \r\n");
      out.write("            background-repeat: no-repeat; \r\n");
      out.write("            background-color: #f0f0f0; \r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .cardG {\r\n");
      out.write("            width: 500px;\r\n");
      out.write("            height: auto;\r\n");
      out.write("            margin-left: auto; \r\n");
      out.write("            margin-right: 30px; /* Align to the right */\r\n");
      out.write("            margin-top: 50px; \r\n");
      out.write("            background: linear-gradient(to bottom right, #ffffff, #e6e6e6); \r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);\r\n");
      out.write("            padding: 30px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-item {\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-item label {\r\n");
      out.write("            display: block;\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("            margin-bottom: 5px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-item input {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            padding: 10px;\r\n");
      out.write("            border: 1px solid #ddd;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .form-item input:focus {\r\n");
      out.write("            outline: none;\r\n");
      out.write("            border-color: #4CAF50;\r\n");
      out.write("            box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-primary {\r\n");
      out.write("            background-color: #4CAF50;\r\n");
      out.write("            border-color: #4CAF50;\r\n");
      out.write("            padding: 10px 20px;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            border-radius: 5px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .btn-primary:hover {\r\n");
      out.write("            background-color: #45a049;\r\n");
      out.write("            border-color: #45a049;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .forget-password a {\r\n");
      out.write("            color: #4CAF50;\r\n");
      out.write("            text-decoration: none;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        .forget-password a:hover {\r\n");
      out.write("            text-decoration: underline;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("  <!-- Include Header JSP -->\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "inc/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"flex-col content-wrapper\">\r\n");
      out.write("        <div class=\"cardG\">\r\n");
      out.write("            <h4 class=\"text-center\">Welcome to Online Banking</h4>\r\n");
      out.write("            <h6 class=\"text-center\">Please log in to continue</h6>\r\n");
      out.write("            <form action=\"login\" method=\"post\">\r\n");
      out.write("                <div class=\"form-item\">\r\n");
      out.write("                    <label for=\"username\">Username:</label>\r\n");
      out.write("                    <input type=\"text\" id=\"username\" value=\"shamal01\" name=\"username\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-item\">\r\n");
      out.write("                    <label for=\"password\">Password</label>\r\n");
      out.write("                    <input type=\"password\" id=\"password\"value=\"123\" name=\"password\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"form-item\">\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Login</button>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"text-center\">\r\n");
      out.write("                    <p class=\"forget-password\">Forgot your password? <a href=\"/reset-password\">Reset it here</a></p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"mt-3\">\r\n");
      out.write("                ");
 
                    String errorMessage = (String) request.getAttribute("errorMessage");
                    if (errorMessage != null) {
                
      out.write("\r\n");
      out.write("                <div class=\"alert alert-danger\">\r\n");
      out.write("                    ");
      out.print( errorMessage );
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("                ");
 } 
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap JS and dependencies -->\r\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.5.1.slim.min.js\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js\"></script>\r\n");
      out.write("    <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
