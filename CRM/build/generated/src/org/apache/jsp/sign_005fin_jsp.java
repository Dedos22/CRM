package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sign_005fin_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("  <head>\r\n");
      out.write("  <meta charset=\"utf-8\" />\r\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />\r\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\r\n");
      out.write("  <meta name=\"description\" content=\"Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <title></title>\r\n");
      out.write("\r\n");
      out.write("  <!-- GOOGLE FONTS -->\r\n");
      out.write("  <link href=\"https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500\" rel=\"stylesheet\" />\r\n");
      out.write("  <link href=\"https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  <!-- PLUGINS CSS STYLE -->\r\n");
      out.write("  <link href=\"assets/plugins/nprogress/nprogress.css\" rel=\"stylesheet\" />\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <!-- SLEEK CSS -->\r\n");
      out.write("  <link id=\"sleek-css\" rel=\"stylesheet\" href=\"assets/css/sleek.css\" />\r\n");
      out.write("\r\n");
      out.write("  <!-- FAVICON -->\r\n");
      out.write("  <link href=\"assets/img/favicon.png\" rel=\"shortcut icon\" />\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("  <!--\r\n");
      out.write("    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries\r\n");
      out.write("  -->\r\n");
      out.write("  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\r\n");
      out.write("  <!--[if lt IE 9]>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("    <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("  <![endif]-->\r\n");
      out.write("  <script src=\"assets/plugins/nprogress/nprogress.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("  <body class=\"\" id=\"body\">\r\n");
      out.write("      <div class=\"container d-flex flex-column justify-content-between vh-100\">\r\n");
      out.write("      <div class=\"row justify-content-center mt-5\">\r\n");
      out.write("        <div class=\"col-xl-5 col-lg-6 col-md-10\">\r\n");
      out.write("          <div class=\"card\">\r\n");
      out.write("            <div class=\"card-header bg-primary\">\r\n");
      out.write("              <div class=\"app-brand\">\r\n");
      out.write("                <a href=\"/index.html\">\r\n");
      out.write("                  \r\n");
      out.write("                    <g fill=\"none\" fill-rule=\"evenodd\">\r\n");
      out.write("                      <path class=\"logo-fill-blue\" fill=\"#7DBCFF\" d=\"M0 4v25l8 4V0zM22 4v25l8 4V0z\" />\r\n");
      out.write("                      <path class=\"logo-fill-white\" fill=\"#FFF\" d=\"M11 4v25l8 4V0z\" />\r\n");
      out.write("                    </g>\r\n");
      out.write("                  </svg>\r\n");
      out.write("                  <span class=\"brand-name\">CRM LOGİN</span>\r\n");
      out.write("                </a>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"card-body p-5\">\r\n");
      out.write("\r\n");
      out.write("              <h4 class=\"text-dark mb-5\">GİRİŞ</h4>\r\n");
      out.write("              <form action=\"giriskontrol.jsp\" method=\"POST\">\r\n");
      out.write("                <div class=\"row\">\r\n");
      out.write("                  <div class=\"form-group col-md-12 mb-4\">\r\n");
      out.write("                    <input type=\"text\" class=\"form-control input-lg\" name=\"email\" id=\"email\" aria-describedby=\"emailHelp\" placeholder=\"Username\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"form-group col-md-12 \">\r\n");
      out.write("                    <input type=\"password\" class=\"form-control input-lg\" name=\"password\" id=\"password\" placeholder=\"Password\">\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"col-md-12\">\r\n");
      out.write("                    <div class=\"d-flex my-2 justify-content-between\">\r\n");
      out.write("                      <div class=\"d-inline-block mr-3\">\r\n");
      out.write("                        <label class=\"control control-checkbox\">Beni Hatırla\r\n");
      out.write("                          <input type=\"checkbox\" />\r\n");
      out.write("                          <div class=\"control-indicator\"></div>\r\n");
      out.write("                        </label>\r\n");
      out.write("\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <p><a class=\"text-blue\" href=\"#\">Parolanızı mı unuttunuz?</a></p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-lg btn-primary btn-block mb-4\">GİRİŞ</button>\r\n");
      out.write("                    <p>Henüz bir hesabınız yok mu ?\r\n");
      out.write("                      <a class=\"text-blue\" href=\"sign_up.jsp\">KAYIT OL</a>\r\n");
      out.write("                    </p>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </form>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </div>\r\n");
      out.write("      <div class=\"copyright pl-0\">\r\n");
      out.write("       \r\n");
      out.write("      </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
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
