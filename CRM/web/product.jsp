
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Database.MyDatabase"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <meta name="description" content="Sleek Dashboard - Free Bootstrap 4 Admin Dashboard Template and UI Kit. It is very powerful bootstrap admin dashboard, which allows you to build products like admin panels, content management systems and CRMs etc.">


  <title>Chat - Sleek Admin Dashboard Template</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet" />
  <link href="https://cdn.materialdesignicons.com/4.4.95/css/materialdesignicons.min.css" rel="stylesheet" />


  <!-- PLUGINS CSS STYLE -->
  <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />

  

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
          ——— LEFT SIDEBAR WITH FOOTER
          =====================================
        -->
      
 <%@ include file="header.jsp" %>

    <div class="page-wrapper">
                <!-- Header -->
          <header class="main-header " id="header">
           
<%@ include file="navbar.jsp" %>

          </header>


      <div class="content-wrapper">
        <div class="content"><div class="breadcrumb-wrapper breadcrumb-contacts">
  <div>
    <h1>ÜRÜNLER</h1>
    
        <nav aria-label="breadcrumb">
          <ol class="breadcrumb p-0">
            <li class="breadcrumb-item">
              <a href="index.html">
                <span class="mdi mdi-home"></span>                
              </a>
            </li>
            <li class="breadcrumb-item">
              App
            </li>
            <li class="breadcrumb-item" aria-current="page">ürünler</li>
          </ol>
        </nav>

  </div>
  <div>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-add-contact"> Add Costumer
    </button>
  </div>
</div>

<div class="row">
  
            <%  
                                                MyDatabase db = new MyDatabase();
                                                Connection con = db.getConnection();
                                                Statement stmt = con.createStatement();
                                                ResultSet rs = stmt.executeQuery("SELECT * FROM product");
                                                while (rs.next()) {
                                                  
                                                    String ad = rs.getString("ü_isim");
                                                    String fiyat = rs.getString("fiyat");
                                                     String marka = rs.getString("marka");
                                                      String model= rs.getString("model");
                                                       String detay = rs.getString("detaylar");
                                            %>
     
           
  <div class="col-lg-6 col-xl-4">
       
    <div class="card card-default p-4">
      <a href="javascript:0" class="media text-secondary" data-toggle="modal" data-target="#modal-contact">
        <img src="assets/img/products/p1.jpg" class="mr-3 img-fluid rounded" alt="Avatar Image">
            <div class="media-body">
              <c:forEach  items="${productdelete.jsp}">
          <h5 class="mt-0 mb-2 text-dark"> <%= ad  %>   </h5> 
          <ul class="list-unstyled">
           
            <li class="d-flex mb-1">
              <i class="mdi mdi-email mr-1"></i>
              <span> <%=fiyat  %> </span>
            </li>
            <li class="d-flex mb-1">
              <i class="mdi mdi-phone mr-1"></i>
              <span><%= marka   %><%=model %></span>
            </li>
             <li class="d-flex mb-1">
              <i class="mdi mdi-email mr-1"></i>
              <span> <%=detay %> </span>
            </li>
          </ul>
  <a href="productdelete.jsp?u_id=<%=rs.getString("u_id") %>">Delete</a>
   <a href="urunupdate.jsp?u_id=<%=rs.getString("u_id")%>">update</a>
        </div>
            
        
      </a>

    </div>
  </div>
         
        <% } %> 
              
         
         
         
         
  


</div>


<!-- Contact Modal -->
<div class="modal fade" id="modal-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header justify-content-end border-bottom-0">
        <button type="button" class="btn-edit-icon" data-dismiss="modal" aria-label="Close">
          <i class="mdi mdi-pencil"></i>
        </button>
        <div class="dropdown">
          <button class="btn-dots-icon" type="button" id="dropdownMenuButton" data-toggle="dropdown"
            aria-haspopup="true" aria-expanded="false">
            <i class="mdi mdi-dots-vertical"></i>
          </button>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
            <a class="dropdown-item" href="#">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
          </div>
        </div>
        <button type="button" class="btn-close-icon" data-dismiss="modal" aria-label="Close">
          <i class="mdi mdi-close"></i>
        </button>
      </div>
      <div class="modal-body pt-0">
        <div class="row no-gutters">
          <div class="col-md-6">
            <div class="profile-content-left px-4">
              <div class="card text-center widget-profile px-0 border-0">
                <div class="card-img mx-auto rounded-circle">
                  <img src="assets/img/user/u6.jpg" alt="user image">
                </div>
                <div class="card-body">
                  <h4 class="py-2 text-dark">Albrecht Straub</h4>
                  <p>Albrecht.straub@gmail.com</p>
                  <a class="btn btn-primary btn-pill btn-lg my-4" href="#">Follow</a>
                </div>
              </div>
              <div class="d-flex justify-content-between ">
                <div class="text-center pb-4">
                  <h6 class="text-dark pb-2">1503</h6>
                  <p>Friends</p>
                </div>
                <div class="text-center pb-4">
                  <h6 class="text-dark pb-2">2905</h6>
                  <p>Followers</p>
                </div>
                <div class="text-center pb-4">
                  <h6 class="text-dark pb-2">1200</h6>
                  <p>Following</p>
                </div>
              </div>

            </div>
          </div>
        
            
          <div class="col-md-6">
            <div class="contact-info px-4">
              <h4 class="text-dark mb-1">Contact Details</h4>
              <p class="text-dark font-weight-medium pt-4 mb-2">Email address</p>
              <p>Albrecht.straub@gmail.com</p>
              <p class="text-dark font-weight-medium pt-4 mb-2">Phone Number</p>
              <p>+99 9539 2641 31</p>
              <p class="text-dark font-weight-medium pt-4 mb-2">Birthday</p>
              <p>Nov 15, 1990</p>
              <p class="text-dark font-weight-medium pt-4 mb-2">Event</p>
              <p>Lorem, ipsum dolor</p>
            </div>
          </div>
            
         
            
            
        </div>
      </div>

    </div>
  </div>
</div>

<!-- Add Contact Button  -->
<div class="modal fade" id="modal-add-contact" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
  aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
    <div class="modal-content">
      <form action="UKayitEt.jsp" method="post">
        <div class="modal-header px-4">
          <h5 class="modal-title" id="exampleModalCenterTitle">Create New Contact</h5>
        </div>
        <div class="modal-body px-4">

          <div class="form-group row mb-6">
            <label for="coverImage" class="col-sm-4 col-lg-2 col-form-label">User Image</label>
            <div class="col-sm-8 col-lg-10">
              <div class="custom-file mb-1">
                <input type="file" class="custom-file-input" id="coverImage" required>
                <label class="custom-file-label" for="coverImage">Choose file...</label>
                <div class="invalid-feedback">Example invalid custom file feedback</div>
              </div>
            </div>
          </div>

          <div class="row mb-2">
            <div class="col-lg-6">
              <div class="form-group">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="ü_isim" name="ü_isim" >
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="fiyat" name="fiyat" >
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group mb-4">
                <label for="userName">tel</label>
                <input type="text" class="form-control"  id="marka" name="marka" >
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group mb-4">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="model" name="model" >
              </div>
            </div>

            <div class="col-lg-6">
              <div class="form-group mb-4">
                <label >adres</label>
                <input type="text" class="form-control" id="detaylar" name="detaylar">
              </div>
            </div>

            
          </div>
        </div>
        <div class="modal-footer px-4">
          
         <button type="submit" class="btn btn-primary"> save</button>
        </div>
      </form>
    </div>
  </div>
</div></div>

        

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