<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<% String stname=session.getAttribute("name").toString();
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
 Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
 String rnsql="exec sp_fetchparentDetails '"+stname+"'";
 PreparedStatement rnpst=con.prepareStatement(rnsql);
 ResultSet rnres=rnpst.executeQuery();
 rnres.next();
String regno=rnres.getString("reg_No");
  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student dashboard</title>
        <link rel="stylesheet" href="css/adb.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />        
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </head>
    <body style="background-image: url(img/bg3.jpg); background-repeat: no-repeat; background-size: cover;">
        <div class="container-fulid ">
            <div class="row px-0 mx-0">
                <div class="col-md-3 col-sm-1 bg-info-subtle px-0" id="leftcol" style="min-height: 100vh;">
                    <nav class="navbar d-sm-flex d-md-none">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#leftcon">
                <span class="navbar-toggler-icon"></span></button>
                </nav>
                    <div class="collapse show" id="leftcon">
                        <h4 class="d-md-flex d-sm-none align-items-center"><i class="fa-regular fa-user my-3 mx-2"></i>&ensp;Hello<%=" "+stname%></h4>
                    <div class="collapse show" id="leftcon">
                    <a href="#" class="teacher btn fw-semibold" data-bs-toggle="collapse" data-bs-target="#student"><i class="fa-solid fa-user-group fa-lg"></i>Student dashboard</a>
                    </div>
                    <ul class="collapse list-group list-group-flush"  id="student">
                        <li class="list-group-item  bg-transparent py-0 d-grid" id="mdbtn"><a href="#mdcon" class="link-underline-opacity-0 list-group-item bg-transparent">get mark details</a></li>
                        <li class="list-group-item  bg-transparent py-0 d-grid" id="fdbtn"><a href="#fdcon" class="link-underline-opacity-0 list-group-item bg-transparent">Fees Details</a></li>
                    </ul>
                    <div class="collapse show" id="leftcon">
                        <a href="index.jsp" class="teacher btn fw-semibold"><i class="fa-solid fa-xmark fa-lg"></i><span class="ms-2">Logout</span></a>
                    </div>
                     </div>
                    </div>
                <div class="col-md-9 bg-color-#CEDEBD position-relative">
              <div class="col mdcon" id="mdcon">
                            <form action="#mdcon" method="post" class="row g-3 pt-4 justify-content-center">
                                    <div class="col-auto">
                                        <input type="number" class="form-control" id="mdregno" name="mdregno" placeholder="Register number">
                                    </div>
                                    <div class="col-auto">
                                        <input type="submit" value="show" class="btn btn-primary mb-3" name="mdsub">
                                    </div>
                                </form>
                              <table class="table table-success">
                        <thead>
                          <tr>
                              <th scope="col ">reg_no</th>
                               <th scope="col ">name</th>
                            <th scope="col ">tamil</th>
                            <th scope="col">english</th>
                            <th scope="col">maths</th>
                            <th scope="col">science</th>
                            <th scope="col">social</th>
                            <th scope="col">total</th>
                            <th scope="col">average</th>
                          </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <%
                                String mdsub=request.getParameter("mdsub");
                                if(mdsub!=null){
                            String mdregno=request.getParameter("mdregno");
                            String mdsql="exec sp_fetchmarks '"+mdregno+"'";
                            PreparedStatement mdpst=con.prepareStatement(mdsql);
                            ResultSet mdres=mdpst.executeQuery();
                            while(mdres.next()) {
                        %>
                            <tr>
                                <td><%=mdres.getString("reg_no")%></td>
                                <td><%=mdres.getString("name")%></td>
                                <td><%=mdres.getString("tamil")%></td>
                              <td><%=mdres.getString("english")%></td>
                              <td><%=mdres.getString("maths")%></td>
                              <td><%=mdres.getString("science")%></td>
                                <td><%=mdres.getString("social")%></td>
                                <td><%=mdres.getString("total")%></td>
                                <td><%=mdres.getString("average")%>%</td>
                              
                            </tr>
                            <% 
                                        }
                                }
                            %>
                        </tbody>
                       </table>
                  </div>
                        <div class="col fdcon" id="fdcon">
                              <table class="table table-success">
                        <thead>
                          <tr>
                            <th scope="col">reg_no</th>
                            <th scope="col ">name</th>
                            <th scope="col">total fees</th>
                            <th scope="col">Fees Paid</th>
                            <th scope="col">Fees Balance</th>
                          </tr>
                        </thead>
                        <tbody class="table-group-divider">
                            <%
                             String fdsql="exec sp_feesView "+regno;
                            PreparedStatement fdpst=con.prepareStatement(fdsql);
                            ResultSet fdres=fdpst.executeQuery();
                            while(fdres.next())
                            {
                        %>
                            <tr>
                                <td><%=fdres.getString("reg_no")%></td>
                                <td><%=fdres.getString("name")%></td>
                              <td><%=fdres.getString("totalFees")%></td>
                              <td><%=fdres.getString("fees_Paid")%></td>
                              <td><%=fdres.getString("fees_Balance")%></td>
                            </tr>
                            <% 
                                        }
                            %>
                        </tbody>
                       </table>
                  </div>
                    </div>
                  </div>
            </div>
    </body>
</html>
