/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.96
 * Generated at: 2024-12-19 19:18:25 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class personal_002dlone_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Apply for Personal Loan | Online Banking</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/style.css\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/72fb3712df.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"flex\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/acc-dash.jsp", out, false);
      out.write("\r\n");
      out.write("        <div class=\"content-wrapper flex-col m-10\">\r\n");
      out.write("            <div class=\"cardG\">\r\n");
      out.write("                <h2>Apply for a Personal Loan</h2>\r\n");
      out.write("                <form class=\"form\">\r\n");
      out.write("                    <!-- Personal Details -->\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"fullName\">Full Name <span class=\"required\">*</span></label>\r\n");
      out.write("                        <input type=\"text\" id=\"fullName\" name=\"fullName\" placeholder=\"Enter Full Name\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"email\">Email <span class=\"required\">*</span></label>\r\n");
      out.write("                        <input type=\"email\" id=\"email\" name=\"email\" placeholder=\"Enter Email Address\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"phone\">Phone Number <span class=\"required\">*</span></label>\r\n");
      out.write("                        <input type=\"text\" id=\"phone\" name=\"phone\" placeholder=\"Enter Phone Number\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Loan Details -->\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"loanAmount\">Loan Amount <span class=\"required\">*</span></label>\r\n");
      out.write("                        <input type=\"number\" id=\"loanAmount\" name=\"loanAmount\" placeholder=\"Enter Loan Amount\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"loanPurpose\">Purpose of Loan <span class=\"required\">*</span></label>\r\n");
      out.write("                        <textarea id=\"loanPurpose\" name=\"loanPurpose\" rows=\"4\" placeholder=\"Enter Purpose of Loan\" required></textarea>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Employment Details -->\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"employmentStatus\">Employment Status <span class=\"required\">*</span></label>\r\n");
      out.write("                        <select id=\"employmentStatus\" name=\"employmentStatus\" required>\r\n");
      out.write("                            <option value=\"\">-- Select Status --</option>\r\n");
      out.write("                            <option value=\"employed\">Employed</option>\r\n");
      out.write("                            <option value=\"self-employed\">Self-Employed</option>\r\n");
      out.write("                            <option value=\"unemployed\">Unemployed</option>\r\n");
      out.write("                            <option value=\"student\">Student</option>\r\n");
      out.write("                        </select>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"form-item\">\r\n");
      out.write("                        <label for=\"monthlyIncome\">Monthly Income (in LK) <span class=\"required\">*</span></label>\r\n");
      out.write("                        <input type=\"number\" id=\"monthlyIncome\" name=\"monthlyIncome\" placeholder=\"Enter Monthly Income\" required>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <!-- Action Buttons -->\r\n");
      out.write("                    <div class=\"action-buttons\">\r\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\">Submit Application</button>\r\n");
      out.write("                        <button type=\"reset\" class=\"btn btn-danger\">Reset</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </form>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/footer.jsp", out, false);
      out.write("\r\n");
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
