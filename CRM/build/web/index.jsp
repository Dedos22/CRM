
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.MyDatabase"%>
<% request.setCharacterEncoding("utf-8"); %>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">


  <title>Sleek - Admin Dashboard Template</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
  <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />


  <!-- PLUGINS CSS STYLE -->
  <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />

  
  
  <!-- No Extra plugin used -->
  
  
  
  <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
  
  
  
  <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />
  
  
  
  <link href="assets/plugins/toastr/toastr.min.css" rel="stylesheet" />
  
  

  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />

  <!-- FAVICON -->
  <link href="assets/img/favicon.png" rel="shortcut icon" />

  

  <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="assets/plugins/nprogress/nprogress.js"></script>
</head>


<body class="header-fixed sidebar-fixed sidebar-dark header-light" id="body">
  
  <script>
    NProgress.configure({ showSpinner: false });
    NProgress.start();
  </script>

  
  <div id="toaster"></div>
  

  <div class="wrapper">
    <!-- Github Link -->
    <a href="https://github.com/tafcoder/sleek-dashboard"  target="_blank" class="github-link">
      <svg width="70" height="70" viewBox="0 0 250 250" aria-hidden="true">
        <defs>
          <linearGradient id="grad1" x1="0%" y1="75%" x2="100%" y2="0%">
            <stop offset="0%" style="stop-color:#896def;stop-opacity:1" />
            <stop offset="100%" style="stop-color:#482271;stop-opacity:1" />
          </linearGradient>
        </defs>
        <path d="M 0,0 L115,115 L115,115 L142,142 L250,250 L250,0 Z" fill="url(#grad1)"></path>
      </svg>
      <i class="mdi mdi-github-circle"></i>
    </a>

            <!--
          ====================================
          âââ LEFT SIDEBAR WITH FOOTER
          =====================================
        -->
   <%@ include file="header.jsp" %>
 
    <div class="page-wrapper">
                <!-- Header -->
          <header class="main-header " id="header">
      

<%@ include file="navbar.jsp" %>
          </header>


      <div class="content-wrapper">
        <div class="content">						 
                  <!-- Top Statistics -->
                  <div class="row">
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">71,503</h2>
                          <p>Online Signups</p>
                          <div class="chartjs-wrapper">
                            <canvas id="barChart"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini  mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">9,503</h2>
                          <p>New Visitors Today</p>
                          <div class="chartjs-wrapper">
                            <canvas id="dual-line"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">71,503</h2>
                          <p>Monthly Total Order</p>
                          <div class="chartjs-wrapper">
                            <canvas id="area-chart"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="col-xl-3 col-sm-6">
                      <div class="card card-mini mb-4">
                        <div class="card-body">
                          <h2 class="mb-1">9,503</h2>
                          <p>Total Revenue This Year</p>
                          <div class="chartjs-wrapper">
                            <canvas id="line"></canvas>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>


						<div class="row">
							<div class="col-xl-12 col-md-12">
                      <!-- Sales Graph -->
                      <div class="card card-default" data-scroll-height="675">
                        <div class="card-header">
                          <h2>Sales Of The Year</h2>
                        </div>
                        <div class="card-body">
                          <canvas id="linechart" class="chartjs"></canvas>
                        </div>
                        <div class="card-footer d-flex flex-wrap bg-white p-0">
                          <div class="col-6 px-0">
                            <div class="text-center p-4">
                              <h4>$6,308</h4>
                              <p class="mt-2">Total orders of this year</p>
                            </div>
                          </div>
                          <div class="col-6 px-0">
                            <div class="text-center p-4 border-left">
                              <h4>$70,506</h4>
                              <p class="mt-2">Total revenue of this year</p>
                            </div>
                          </div>
                        </div>
                      </div>
</div>
							<div class="col-xl-4 col-md-12">
                  <!-- Doughnut Chart -->
                
</div>
						</div>

						<div class="row">
							<div class="col-xl-4 col-lg-6 col-12">
								
                  <!-- Polar and Radar Chart -->
               
                        <!-- Notification Table -->
                       
</div>
						</div>

						<div class="row">
							<div class="col-12"> 
                  <!-- Recent Order Table -->
                
</div>
						</div>

						<div class="row">
							<div class="col-xl-6"> 
                  <!-- To Do list -->
                  <div class="card card-default todo-table" id="todo" data-scroll-height="550">
                    <div class="card-header justify-content-between">
                      <h2>To Do List</h2>
                     
                    </div>
                    <div class="card-body slim-scroll">
                    <form action="task" method="post">
                          
                            <input type="text" class="form-control" id="task" name="task" autofocus>
                          
                          <button type="submit" class="btn btn-primary">ADD TASK</button>
                       
                        </form>
                        
                      <div class="todo-list" id="todo-list">
                          
                          <%  
                                                MyDatabase db = new MyDatabase();
                                                Connection con = db.getConnection();
                                                Statement stmt = con.createStatement();
                                                ResultSet rs = stmt.executeQuery("SELECT * FROM todolist");
                                                while (rs.next()) {
                                                  
                                                    String görev = rs.getString("görev");
                                                    String id = rs.getString("id");
                                                    
                                            %>
                                             <!--   for (Todo todo: todos) {  -->
                            <c:forEach  items="${taskdelete.jsp}">
                        <div >
                          <i class="mdi"></i>
                           <span > <%= id %> </span>
                          <span > <%=görev %> </span> .............................................
                          <a href="taskdelete.jsp?id=<%=rs.getString("id") %>"><button type="button" class="delete">Delete</button></a><br><br>
                         
                        </div>
                           <%
      }
                                               
     %>
           
                          
                        
                      </div>
                    </div>
                    <div class="mt-3"></div>
                  </div>
</div>
							<div class="col-xl-6">
                  <!-- area chart -->
                  <div class="card card-default" >
                    <div class="card-header d-block d-md-flex justify-content-between">
                      <h2>World Wide Customer </h2>
                      <div class="dropdown show d-inline-block widget-dropdown ml-auto">
                        <a class="dropdown-toggle" href="#" role="button" id="world-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
                          World Wide
                        </a>
                        <ul class="dropdown-menu dropdown-menu-right" aria-labelledby="world-dropdown">
                          <li class="dropdown-item"><a href="#">Continetal chart</a></li>
                          <li class="dropdown-item"><a href="#">Sub-continental</a></li>
                        </ul>
                      </div>
                    </div>
                    <div class="card-body vector-map-world">
                      <div id="world" style="height: 100%; width: 100%;"></div>
                    </div>
                    <div class="card-footer d-flex flex-wrap bg-white p-0">
                      <div class="col-6">
                        <div class="p-4">
                          <ul class="d-flex flex-column justify-content-between">
                            <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #29cc97"></i>America <span class="float-right">5k</span></li>
                            <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #4c84ff "></i>Australia <span class="float-right">3k</span></li>
                          </ul>
                        </div>
                      </div>
                      <div class="col-6">
                        <div class="p-4 border-left">
                          <ul class="d-flex flex-column justify-content-between">
                            <li class="mb-2"><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #ffa128"></i>Europe <span class="float-right">4k</span></li>
                            <li><i class="mdi mdi-checkbox-blank-circle-outline mr-2" style="color: #fe5461"></i>Africa <span class="float-right">2k</span></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
</div>
						</div>

						<div class="row">
							<div class="col-xl-5">
                  <!-- New Customers -->
               
</div>
							<div class="col-xl-7">
                  <!-- Top Products -->
                 
</div>
						</div>
</div>

        

        <div class="right-sidebar-2">
    <div class="right-sidebar-container-2">
      <div class="slim-scroll-right-sidebar-2">

      <div class="right-sidebar-2-header">
        <h2>Layout Settings</h2>
        <p>User Interface Settings</p>
        <div class="btn-close-right-sidebar-2">
          <i class="mdi mdi-window-close"></i>
        </div>
      </div>

      <div class="right-sidebar-2-body">
        <span class="right-sidebar-2-subtitle">Header Layout</span>
        <div class="no-col-space">
          <a href="javascript:void(0);" class="btn-right-sidebar-2 header-fixed-to btn-right-sidebar-2-active">Fixed</a>
          <a href="javascript:void(0);" class="btn-right-sidebar-2 header-static-to">Static</a>
        </div>

        <span class="right-sidebar-2-subtitle">Sidebar Layout</span>
        <div class="no-col-space">
          <select class="right-sidebar-2-select" id="sidebar-option-select">
            <option value="sidebar-fixed">Fixed Default</option>
            <option value="sidebar-fixed-minified">Fixed Minified</option>
            <option value="sidebar-fixed-offcanvas">Fixed Offcanvas</option>
            <option value="sidebar-static">Static Default</option>
            <option value="sidebar-static-minified">Static Minified</option>
            <option value="sidebar-static-offcanvas">Static Offcanvas</option>
          </select>
        </div>

        <span class="right-sidebar-2-subtitle">Header Background</span>
        <div class="no-col-space">
          <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active header-light-to">Light</a>
          <a href="javascript:void(0);" class="btn-right-sidebar-2 header-dark-to">Dark</a>
        </div>

        <span class="right-sidebar-2-subtitle">Navigation Background</span>
        <div class="no-col-space">
          <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active sidebar-dark-to">Dark</a>
          <a href="javascript:void(0);" class="btn-right-sidebar-2 sidebar-light-to">Light</a>
        </div>

        <span class="right-sidebar-2-subtitle">Direction</span>
        <div class="no-col-space">
          <a href="javascript:void(0);" class="btn-right-sidebar-2 btn-right-sidebar-2-active ltr-to">LTR</a>
          <a href="javascript:void(0);" class="btn-right-sidebar-2 rtl-to">RTL</a>
        </div>

        <div class="d-flex justify-content-center" style="padding-top: 30px">
          <div id="reset-options" style="width: auto; cursor: pointer" class="btn-right-sidebar-2 btn-reset">Reset
            Settings</div>
        </div>

      </div>

    </div>
  </div>

</div>

      </div>
    <%@include file="footer.jsp" %>
<script src="assets/plugins/daterangepicker/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
<script>
  jQuery(document).ready(function() {
    jQuery('input[name="dateRange"]').daterangepicker({
    autoUpdateInput: false,
    singleDatePicker: true,
    locale: {
      cancelLabel: 'Clear'
    }
  });
    jQuery('input[name="dateRange"]').on('apply.daterangepicker', function (ev, picker) {
      jQuery(this).val(picker.startDate.format('MM/DD/YYYY'));
    });
    jQuery('input[name="dateRange"]').on('cancel.daterangepicker', function (ev, picker) {
      jQuery(this).val('');
    });
  });
</script>
  


<script src="assets/plugins/toastr/toastr.min.js"></script>



<script src="assets/js/sleek.bundle.js"></script>
</body>

</html>
