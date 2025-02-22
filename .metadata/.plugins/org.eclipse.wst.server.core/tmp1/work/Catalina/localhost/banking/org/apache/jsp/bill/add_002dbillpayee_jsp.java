/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.96
 * Generated at: 2024-10-13 18:37:45 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.bill;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_002dbillpayee_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Bill Payment | EasyBank: Banking at Your Fingertips\r\n");
      out.write("</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/style.css\">\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/72fb3712df.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/sweetalert2@10\"></script>\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
 
	if (session.getAttribute("name") == null) {
		response.sendRedirect("../login.jsp");
		return;
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Include Header JSP -->\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"flex\">\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/acc-dash.jsp", out, false);
      out.write("\r\n");
      out.write("    <div class=\"flex-col content-wrapper\">\r\n");
      out.write("\r\n");
      out.write("        <ul class=\"bredcrumb\">\r\n");
      out.write("            <li><a href=\"../home/home.jsp\">Home</a></li>\r\n");
      out.write("            <li><i class=\"fa-solid fa-chevron-right\"></i></li>\r\n");
      out.write("            <li><a href=\"index.jsp\">Bill Payment Services</a></li>\r\n");
      out.write("            <li><i class=\"fa-solid fa-chevron-right\"></i></li>\r\n");
      out.write("            <li><a href=\"add-billpayee.jsp\">Add Favorite Bill Payee</a></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("            <div class=\"cardG flex-col\">\r\n");
      out.write("                <h2 class=\"text-center\">Favorite Bill Payee</h2>\r\n");
      out.write("                <h3 class=\"m-10\">Add Favorite Bill Form</h3>\r\n");
      out.write("                \r\n");
      out.write("                                    <!-- Success Message Section -->\r\n");
 
// Retrieve the success message from session
String successMessage = (String) session.getAttribute("success_message");
if (successMessage != null) {

      out.write("\r\n");
      out.write("    <div class=\"alert fade-in\" id=\"successMessage\">\r\n");
      out.write("        ");
      out.print( successMessage );
      out.write("\r\n");
      out.write("        <button class=\"btn-close\" onclick=\"this.parentElement.style.display='none';\">&times;</button>\r\n");
      out.write("    </div>\r\n");

    // Remove the message after displaying it
    session.removeAttribute("success_message");
}

      out.write("\r\n");
      out.write("\r\n");
      out.write("<form action=\"");
      out.print( request.getContextPath() );
      out.write("/AddBillPayee\" method=\"POST\" onsubmit=\"return validateBillAccountNo()\">\r\n");
      out.write("    <div class=\"flex flex-col\">\r\n");
      out.write("        <div class=\"flex flex-row form\">\r\n");
      out.write("            <div class=\"form-item flex flex-col\">\r\n");
      out.write("                <label for=\"payeeCategory\">Payee category<span class=\"required\">*</span></label>\r\n");
      out.write("                <select name=\"PayeeCategory\" id=\"payeeCategory\" onchange=\"updateProviders()\" required>\r\n");
      out.write("                    <option value=\"\">Select Payee category</option>\r\n");
      out.write("                    <option value=\"electricity\">Electricity</option>\r\n");
      out.write("                    <option value=\"water\">Water Bill</option>\r\n");
      out.write("                    <option value=\"telecommunications\">Telecommunications</option>\r\n");
      out.write("                    <option value=\"insurance\">Insurance</option>\r\n");
      out.write("                    <option value=\"housing\">Housing</option>\r\n");
      out.write("                    <option value=\"other\">Other Bill Payment</option>\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-item flex flex-col\">\r\n");
      out.write("                <label for=\"serviceProvider\">Service Provider<span class=\"required\">*</span></label>\r\n");
      out.write("                <select id=\"serviceProvider\" name=\"ServiceProvider\" required>\r\n");
      out.write("                    <option value=\"\">Select Service Provider</option>\r\n");
      out.write("                </select>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"flex flex-row form\">\r\n");
      out.write("            <div class=\"form-item flex flex-col\">\r\n");
      out.write("                <label for=\"BillAccountNo\">Payee Account Number (billing Number) <span class=\"required\">*</span></label>\r\n");
      out.write("                <input type=\"number\" name=\"BillAccountNo\" placeholder=\"Payee Account Number\" required >\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"flex flex-row form\">\r\n");
      out.write("            <div class=\"form-item flex flex-col\">\r\n");
      out.write("                <label for=\"Description\">Payee Description<span class=\"required\">*</span></label>\r\n");
      out.write("                <input type=\"text\" name=\"Description\" placeholder=\"Description\" required>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"flex\" style=\"margin-top: 10px ;gap:10px\">\r\n");
      out.write("           \r\n");
      out.write("    <button type=\"submit\" class=\"btn btn-primary\" >Submit</button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("           \r\n");
      out.write("             <button type=\"reset\" class=\"btn btn-primary\">Reset</button>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("    // Function to validate the Bill Account Number length\r\n");
      out.write("    function validateBillAccountNo() {\r\n");
      out.write("        var billAccountNo = document.getElementsByName('BillAccountNo')[0].value;\r\n");
      out.write("        \r\n");
      out.write("        if (billAccountNo.length < 9 || billAccountNo.length > 15) {\r\n");
      out.write("            alert(\"Bill Account Number must be between 10 and 15 digits.\");\r\n");
      out.write("            return false; // Prevent form submission if validation fails\r\n");
      out.write("        }\r\n");
      out.write("        return true; // Allow form submission if validation passes\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("    const providers = {\r\n");
      out.write("        electricity: [\"Ceylon Electricity Board (CEB)\"],\r\n");
      out.write("        water: [\"National Water Supply and Drainage Board (NWSDB)\"],\r\n");
      out.write("        telecommunications: [\"Dialog Axiata\", \"Mobitel\", \"Hutch\"],\r\n");
      out.write("        insurance: [\"Sri Lanka Insurance Corporation\", \"Janashakthi Insurance\"],\r\n");
      out.write("        housing: [], \r\n");
      out.write("        other: [] \r\n");
      out.write("    };\r\n");
      out.write("\r\n");
      out.write("    function updateProviders() {\r\n");
      out.write("        const category = document.getElementById('payeeCategory').value;\r\n");
      out.write("        const providerSelect = document.getElementById('serviceProvider');\r\n");
      out.write("\r\n");
      out.write("        // Clear previous options\r\n");
      out.write("        providerSelect.innerHTML = '<option value=\"\">Select Service Provider</option>';\r\n");
      out.write("\r\n");
      out.write("        if (providers[category]) {\r\n");
      out.write("            providers[category].forEach(provider => {\r\n");
      out.write("                const option = document.createElement('option');\r\n");
      out.write("                option.value = provider;\r\n");
      out.write("                option.textContent = provider;\r\n");
      out.write("                providerSelect.appendChild(option);\r\n");
      out.write("            });\r\n");
      out.write("        }\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
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
