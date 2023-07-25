<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<html>
     <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RC Primary</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0" />
       <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,200" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body style="background-image: url(img/carousel-2.jpg)">
         <nav
        class="navbar navbar-expand-lg bg-info navbar-light shadow sticky-top p-0 pe-5" style="height: 60px;"
    >
      <a href="index.jsp"class="navbar-brand d-flex align-items-center px-4 px-lg-5">
          <h2 class="m-0 text-danger"><i class="fa fa-book me-3"></i>RC PRIMARY</h2>
      </a>
      <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-uppercase fw-bold" id="navbarCollapse">
        <div class="navbar-nav ms-auto">
          <a href="index.jsp" class="nav-item nav-link px-3">Home</a>
          <a href="index.jsp#about" class="nav-item nav-link px-3">About</a>
          <a href="index.jsp#Courses" class="nav-item nav-link px-3">Courses</a>
          <a href="index.jsp#Contact" class="nav-item nav-link px-3">Contact</a>
          <a href="login.jsp" class="nav-item nav-link px-3">login</a>
        </div>
      </div>
    </nav>
        <div class="row mx-0" style="align-items: center; justify-content: center;height: 80vh; ">
                <div class="col-lg-5 col-md-8 col-xxl-4 align-item-center">
                    <div class="container" id="login">
                        <div class="row p-md-5 py-5 shadow rounded-5  signup" style="min-height: auto;background-color:#77889985;">
                            <form action="login.jsp" method="post" class="" target="_blank">
                          <div class="row d-inline">
                                       <div class="col form-group px-0">
                                          <label for="lname" class="py-3 fs-5 fw-semibold ">user name</label>
                                          <input type="text" name="lname" id="iname" class="form-control form-control-lg py-2 rounded-4 bg-transparent" placeholder="username">
                                       </div>
                              </div>
                                        <div class="col form-group pb-3">
                                          <label for="lpass" class="py-3 fs-5 fw-semibold">password</label>
                                          <input type="password"name="lpass"  id="pass" class="form-control form-control-lg py-2 rounded-4 bg-transparent" placeholder="password">
                                       </div>
                                       <div class="d-grid gap-2 col-8 mx-auto pt-3">
                                           <input type="submit" id="sub" class="btn btn-primary py-2" value="login" name="login">
                                       </div>
                         </form>
                            </div>
                        </div>
                     </div>
                        </div>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
                </body>
</html>
<%
    if(request.getParameter("login")!=null){
    PreparedStatement pst;
    ResultSet res;
    String name=request.getParameter("lname");
    String pass=request.getParameter("lpass");
    session.setAttribute("name", name);
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_School","sridhar","sridhar");
    if(name.isEmpty()|| pass.isEmpty()){
    System.out.println("fill all columns...");
    }
    else{
    int i=1;
    while(i<=4){
    String sql="exec sp_login '"+name+"','"+pass+"',"+i;
    pst=con.prepareStatement(sql);
    res=pst.executeQuery();
    if(i==1){
    if(res.next()){
    response.sendRedirect("Admindashboard.jsp");
    break;
     }
    }
     if(i==2){
    if(res.next()){
    response.sendRedirect("Teacherdashboard.jsp");
    break;
     }
    }
    if(i==3){
    if(res.next()){
    response.sendRedirect("studentDashboard.jsp");
    break;
     }
    }
    if(i==4){
    if(res.next()){
    response.sendRedirect("parentDashboard.jsp");
    break;
     }
    }
     i++;
    }
                        %>
                         <script>
                             alert("incorrect Password....");
                         </script>
                         <%
    }
    }
    
%>