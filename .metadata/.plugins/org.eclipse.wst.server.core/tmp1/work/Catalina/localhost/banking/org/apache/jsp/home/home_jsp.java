/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.96
 * Generated at: 2024-12-26 18:41:12 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.home;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Dashboard | Your Road to Safety and Savings</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"../assets/style.css\">\r\n");
      out.write("    <!-- Font Awesome -->\r\n");
      out.write("    <script src=\"https://kit.fontawesome.com/72fb3712df.js\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js'></script>\r\n");
      out.write("\r\n");
      out.write("    <style>\r\n");
      out.write("        /* Flexbox container to place the calendar and calculator in one line */\r\n");
      out.write("        .flex-container {\r\n");
      out.write("            display: flex;\r\n");
      out.write("            justify-content: space-between;\r\n");
      out.write("            gap: 30px;\r\n");
      out.write("            margin: 20px 0;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Calendar styling */\r\n");
      out.write("        #calendar {\r\n");
      out.write("            width: 45%;\r\n");
      out.write("            height: 300px;\r\n");
      out.write("            background-color: #fff;\r\n");
      out.write("            border: 1px solid #ddd;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Calculator container styling */\r\n");
      out.write("        #calcu {\r\n");
      out.write("            width: 45%;\r\n");
      out.write("            border: 1px solid #ddd;\r\n");
      out.write("            border-radius: 15px;\r\n");
      out.write("            background-color: #f4f4f4;\r\n");
      out.write("            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            display: flex;\r\n");
      out.write("            flex-direction: column;\r\n");
      out.write("            justify-content: space-between;\r\n");
      out.write("            align-items: center;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Result display box */\r\n");
      out.write("        #result {\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            font-size: 32px;\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("            text-align: right;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            background-color: #fff;\r\n");
      out.write("            box-shadow: inset 0 0 10px rgba(0, 0, 0, 0.1);\r\n");
      out.write("            margin-bottom: 20px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Buttons container */\r\n");
      out.write("        .button-row {\r\n");
      out.write("            display: flex;\r\n");
      out.write("            justify-content: space-between;\r\n");
      out.write("            width: 100%;\r\n");
      out.write("            margin-bottom: 10px;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Button styling */\r\n");
      out.write("        input[type=\"button\"] {\r\n");
      out.write("            width: 22%;\r\n");
      out.write("            padding: 20px;\r\n");
      out.write("            font-size: 24px;\r\n");
      out.write("            font-weight: bold;\r\n");
      out.write("            color: #fff;\r\n");
      out.write("            background-color: #4b9a87;\r\n");
      out.write("            border: none;\r\n");
      out.write("            border-radius: 10px;\r\n");
      out.write("            transition: all 0.3s ease;\r\n");
      out.write("            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"]:hover {\r\n");
      out.write("            background-color: #4b9a87;\r\n");
      out.write("            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);\r\n");
      out.write("            transform: translateY(-5px);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"]:active {\r\n");
      out.write("            background-color: #4b9a87;\r\n");
      out.write("            transform: translateY(2px);\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Clear button styling */\r\n");
      out.write("        input[type=\"button\"].clear {\r\n");
      out.write("            background-color: #f44336;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"].clear:hover {\r\n");
      out.write("            background-color: #e53935;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Equal button styling */\r\n");
      out.write("        input[type=\"button\"].equal {\r\n");
      out.write("            background-color: #2196F3;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        input[type=\"button\"].equal:hover {\r\n");
      out.write("            background-color: #1976D2;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        /* Responsive adjustments */\r\n");
      out.write("        @media (max-width: 768px) {\r\n");
      out.write("            .flex-container {\r\n");
      out.write("                flex-direction: column;\r\n");
      out.write("                align-items: center;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            #calcu {\r\n");
      out.write("                width: 90%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            #calendar {\r\n");
      out.write("                width: 90%;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            .button-row {\r\n");
      out.write("                flex-direction: column;\r\n");
      out.write("                align-items: center;\r\n");
      out.write("            }\r\n");
      out.write("\r\n");
      out.write("            input[type=\"button\"] {\r\n");
      out.write("                width: 100%;\r\n");
      out.write("                margin-bottom: 10px;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    </style>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    ");
 
        if (session.getAttribute("name") == null) {
            response.sendRedirect("../login.jsp");
            return;
        }
    
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/header.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("    <div class=\"flex\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../inc/acc-dash.jsp", out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <div class=\"flex-col content-wrapper\">\r\n");
      out.write("            <ul class=\"bredcrumb\">\r\n");
      out.write("                <li><a href=\"dashboard.php\">Home</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"flex-container\">\r\n");
      out.write("                <!-- Calendar Section -->\r\n");
      out.write("                <div id=\"calendar\"></div>\r\n");
      out.write("\r\n");
      out.write("                <!-- Calculator Section -->\r\n");
      out.write("                <div id=\"calcu\">\r\n");
      out.write("                    <input type=\"text\" id=\"result\" disabled>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"button-row\">\r\n");
      out.write("                        <input type=\"button\" value=\"7\" onclick=\"dis('7')\">\r\n");
      out.write("                        <input type=\"button\" value=\"8\" onclick=\"dis('8')\">\r\n");
      out.write("                        <input type=\"button\" value=\"9\" onclick=\"dis('9')\">\r\n");
      out.write("                        <input type=\"button\" value=\"/\" onclick=\"dis('/')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"button-row\">\r\n");
      out.write("                        <input type=\"button\" value=\"4\" onclick=\"dis('4')\">\r\n");
      out.write("                        <input type=\"button\" value=\"5\" onclick=\"dis('5')\">\r\n");
      out.write("                        <input type=\"button\" value=\"6\" onclick=\"dis('6')\">\r\n");
      out.write("                        <input type=\"button\" value=\"*\" onclick=\"dis('*')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"button-row\">\r\n");
      out.write("                        <input type=\"button\" value=\"1\" onclick=\"dis('1')\">\r\n");
      out.write("                        <input type=\"button\" value=\"2\" onclick=\"dis('2')\">\r\n");
      out.write("                        <input type=\"button\" value=\"3\" onclick=\"dis('3')\">\r\n");
      out.write("                        <input type=\"button\" value=\"-\" onclick=\"dis('-')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"button-row\">\r\n");
      out.write("                        <input type=\"button\" value=\"0\" onclick=\"dis('0')\">\r\n");
      out.write("                        <input type=\"button\" value=\".\" onclick=\"dis('.')\">\r\n");
      out.write("                        <input type=\"button\" value=\"=\" onclick=\"solve()\" class=\"equal\">\r\n");
      out.write("                        <input type=\"button\" value=\"+\" onclick=\"dis('+')\">\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"button-row\">\r\n");
      out.write("                        <input type=\"button\" value=\"C\" onclick=\"clr()\" class=\"clear\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <script>\r\n");
      out.write("        // Function that display value in the result field\r\n");
      out.write("        function dis(val) {\r\n");
      out.write("            document.getElementById(\"result\").value += val;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // Handle key events\r\n");
      out.write("        function myFunction(event) {\r\n");
      out.write("            if ('0123456789+-*/'.indexOf(event.key) !== -1) {\r\n");
      out.write("                document.getElementById(\"result\").value += event.key;\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        var cal = document.getElementById(\"calcu\");\r\n");
      out.write("        cal.onkeyup = function (event) {\r\n");
      out.write("            if (event.keyCode === 13) {\r\n");
      out.write("                solve();\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // Function that solves the expression\r\n");
      out.write("        function solve() {\r\n");
      out.write("            let x = document.getElementById(\"result\").value;\r\n");
      out.write("            let y = math.evaluate(x);  // Assuming you have math.js for eval\r\n");
      out.write("            document.getElementById(\"result\").value = y;\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // Function to clear the display\r\n");
      out.write("        function clr() {\r\n");
      out.write("            document.getElementById(\"result\").value = \"\";\r\n");
      out.write("        }\r\n");
      out.write("\r\n");
      out.write("        // Initialize FullCalendar\r\n");
      out.write("        document.addEventListener('DOMContentLoaded', function () {\r\n");
      out.write("            var calendarEl = document.getElementById('calendar');\r\n");
      out.write("            var calendar = new FullCalendar.Calendar(calendarEl, {\r\n");
      out.write("                initialView: 'dayGridMonth',\r\n");
      out.write("                height: 'auto',  // Adjust calendar's height automatically\r\n");
      out.write("            });\r\n");
      out.write("            calendar.render();\r\n");
      out.write("        });\r\n");
      out.write("    </script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
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
