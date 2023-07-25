<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<% String stname=session.getAttribute("name").toString();
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
 Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
 String rnsql="select reg_No,email from tbl_parentDetails where fathername='"+stname+"' or motherName='"+stname+"'";
 PreparedStatement rnpst=con.prepareStatement(rnsql);
 ResultSet rnres=rnpst.executeQuery();
 rnres.next();
String regno=rnres.getString("reg_No");
String fbemail=rnres.getString("email");
  %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin dashboard</title>
        <link rel="stylesheet" href="css/adb.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />        
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <style>
            #fbcon{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
            }
        </style>
    </head>
    <body style="background-image: url(img/bg3.jpg); background-repeat: no-repeat; background-size: cover">
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
                        <li class="list-group-item  bg-transparent py-0 d-grid" id="fbbtn"><a href="#fbcon" class="link-underline-opacity-0 list-group-item bg-transparent">feedback</a></li>
                    </ul>
                    <div class="collapse show" id="leftcon">
                        <a href="index.jsp" class="teacher btn fw-semibold"><i class="fa-solid fa-xmark fa-lg"></i><span class="ms-2">Logout</span></a>
                    </div>  
                     </div>
                    </div>
                <div class="col-md-9 bg-color-#CEDEBD position-relative">
                        <div class="col mdcon mt-5" id="mdcon">
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
                            String mdsql="exec sp_fetchmarks '"+regno+"'";
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
                            %>
                        </tbody>
                       </table>
                  </div>
                        <div class="col fdcon mt-5" id="fdcon">
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
                        <div class=" col-md-7 wow fadeInUp" data-wow-delay="0.5s" id="fbcon">
                            <form target="_self" action="#" method="post">
                            <div class="row g-3  shadow p-3 rounded-4">
                              <div class="col-12">
                                <div class="form-floating">
                                  <textarea class="form-control" placeholder="Leave a message here" id="message" name="fbmsg" style="height: 150px"></textarea>
                                  <label for="message">Message</label>
                                </div>
                              </div>
                              <div class="col-12">
                                  <button class="btn btn-primary w-100 py-3" type="submit" name="fbdbtn">
                                  Send Message
                                </button>
                              </div>
                            </div>
                          </form>
                            <% 
                  String fbdbtn=request.getParameter("fbdbtn");
                  String fbmsg=request.getParameter("fbmsg");
                  PreparedStatement pst=null;
                  if(fbdbtn!=null){
                  if(!fbmsg.equals("")){
                  String sql="exec sp_insertFbDetails ?,?,?";
                  pst=con.prepareStatement(sql);
                  pst.setString(1,stname);
                  pst.setString(2,fbemail);
                  pst.setString(3,fbmsg);
                  int res=pst.executeUpdate();
                         if(res>0){
                         %>
                         <script>
                             alert("send success....");
                         </script>
                         <%
                      }
                        else{
                            %>
                         <script>
                             alert("send failled....");
                         </script>
                         <%
                        }
                      }
                      else{
                        %>
                         <script>
                             alert("send failled....");
                         </script>
                         <%
                      }
                   }
                   %>
          </div>
                    </div>
                  </div>
            </div>
    </body>
</html>
