/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.96
 * Generated at: 2024-10-14 03:40:54 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.loan;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class update_002drequest_002dloan_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("    <title>Update Loan Request</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("     <link rel=\"stylesheet\" href=\"../assets/style.css\">\r\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css\" rel=\"stylesheet\">\r\n");
      out.write("    <style>\r\n");
      out.write("        body {\r\n");
      out.write("            background-color: #FAF3E0;\r\n");
      out.write("        }\r\n");
      out.write("        .form-container {\r\n");
      out.write("            background-color: #FFFFFF;\r\n");
      out.write("            padding: 30px;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);\r\n");
      out.write("        }\r\n");
      out.write("        .btn-submit {\r\n");
      out.write("            background-color: #4CAF50;\r\n");
      out.write("            color: white;\r\n");
      out.write("        }\r\n");
      out.write("        .error-message {\r\n");
      out.write("            color: red;\r\n");
      out.write("            font-size: 0.875rem;\r\n");
      out.write("            margin-top: 0.25rem;\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/header.jsp", out, false);
      out.write("\r\n");
      out.write("    <div class=\"flex\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/acc-dash.jsp", out, false);
      out.write("\r\n");
      out.write("    <div class=\"container mt-5\">\r\n");
      out.write("        <div class=\"row justify-content-center\">\r\n");
      out.write("            <div class=\"col-md-8\">\r\n");
      out.write("                <div class=\"form-container\">\r\n");
      out.write("                    <h3 class=\"text-center mb-4\"><i class=\"fas fa-hand-holding-usd\"></i> Update Loan Request Form</h3>\r\n");
      out.write("                    <form id=\"loanForm\" action=\"updateLoanRequest\" method=\"post\" novalidate>\r\n");
      out.write("                        \r\n");
      out.write("                        <!-- Personal Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"fullName\" class=\"form-label\">Full Name <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-user\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"fullName\" name=\"fullName\" value=\"");
      out.print( request.getParameter("fullName") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div id=\"fullNameError\" class=\"error-message\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"idNumber\" class=\"form-label\">ID Number <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-id-card\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"idNumber\" name=\"idNumber\" value=\"");
      out.print( request.getParameter("idNumber") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter your ID number.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Contact Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"email\" class=\"form-label\">Email Address <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-envelope\"></i></span>\r\n");
      out.write("                                    <input type=\"email\" class=\"form-control\" id=\"email\" name=\"email\" value=\"");
      out.print( request.getParameter("email") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div id=\"emailError\" class=\"error-message\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"phone\" class=\"form-label\">Phone Number <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-phone\"></i></span>\r\n");
      out.write("                                    <input type=\"tel\" class=\"form-control\" id=\"phone\" name=\"phone\" value=\"");
      out.print( request.getParameter("phone") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter a valid phone number.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Address Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"address\" class=\"form-label\">Address <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-map-marker-alt\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"address\" name=\"address\" value=\"");
      out.print( request.getParameter("address") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter your address.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"dob\" class=\"form-label\">Date of Birth <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-calendar-alt\"></i></span>\r\n");
      out.write("                                    <input type=\"date\" class=\"form-control\" id=\"dob\" name=\"dob\" value=\"");
      out.print( request.getParameter("dob") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div id=\"dobError\" class=\"error-message\"></div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter your date of birth.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Loan Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"loanAmount\" class=\"form-label\">Loan Amount <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-dollar-sign\"></i></span>\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" id=\"loanAmount\" name=\"loanAmount\" min=\"100\" step=\"0.01\" value=\"");
      out.print( request.getParameter("loanAmount") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div id=\"loanAmountError\" class=\"error-message\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"loanPurpose\" class=\"form-label\">Purpose of Loan <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-briefcase\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"loanPurpose\" name=\"loanPurpose\" value=\"");
      out.print( request.getParameter("loanPurpose") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please specify the purpose of the loan.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Employment Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"employmentStatus\" class=\"form-label\">Employment Status <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <select class=\"form-select\" id=\"employmentStatus\" name=\"employmentStatus\" required>\r\n");
      out.write("                                    <option value=\"\" disabled>Select Employment Status</option>\r\n");
      out.write("                                    <option value=\"Employed\" ");
      out.print( "Employed".equals(request.getParameter("employmentStatus")) ? "selected" : "" );
      out.write(">Employed</option>\r\n");
      out.write("                                    <option value=\"Self-Employed\" ");
      out.print( "Self-Employed".equals(request.getParameter("employmentStatus")) ? "selected" : "" );
      out.write(">Self-Employed</option>\r\n");
      out.write("                                    <option value=\"Unemployed\" ");
      out.print( "Unemployed".equals(request.getParameter("employmentStatus")) ? "selected" : "" );
      out.write(">Unemployed</option>\r\n");
      out.write("                                </select>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please select your employment status.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"income\" class=\"form-label\">Monthly Income ($) <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-money-bill\"></i></span>\r\n");
      out.write("                                    <input type=\"number\" class=\"form-control\" id=\"income\" name=\"income\" min=\"0\" value=\"");
      out.print( request.getParameter("income") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div id=\"incomeError\" class=\"error-message\"></div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Bank Information Row -->\r\n");
      out.write("                        <div class=\"row mb-3\">\r\n");
      out.write("                            <div class=\"col-md-6\">\r\n");
      out.write("                                <label for=\"bankAccount\" class=\"form-label\">Bank Account Number <span class=\"text-danger\">*</span></label>\r\n");
      out.write("                                <div class=\"input-group\">\r\n");
      out.write("                                    <span class=\"input-group-text\"><i class=\"fas fa-university\"></i></span>\r\n");
      out.write("                                    <input type=\"text\" class=\"form-control\" id=\"bankAccount\" name=\"bankAccount\" value=\"");
      out.print( request.getParameter("bankAccount") );
      out.write("\" required>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"invalid-feedback\">Please enter your bank account number.</div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <!-- Submit Button -->\r\n");
      out.write("                        <div class=\"text-center\">\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-submit btn-lg\">Update Loan Request</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- Optional JavaScript for validation -->\r\n");
      out.write("    <script>\r\n");
      out.write("        // Example of client-side validation logic (optional, customize as needed)\r\n");
      out.write("        document.getElementById('loanForm').addEventListener('submit', function (event) {\r\n");
      out.write("            const fullName = document.getElementById('fullName').value;\r\n");
      out.write("            const idNumber = document.getElementById('idNumber').value;\r\n");
      out.write("\r\n");
      out.write("            if (!fullName || !idNumber) {\r\n");
      out.write("                event.preventDefault();  // Prevent form submission\r\n");
      out.write("                document.getElementById('fullNameError').textContent = fullName ? '' : 'Full Name is required';\r\n");
      out.write("                document.getElementById('idNumberError').textContent = idNumber ? '' : 'ID Number is required';\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
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
