<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<% String stname=session.getAttribute("name").toString();%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin dashboard</title>
        <link rel="stylesheet" href="css/adb.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
    </head>
    <body style="background-image: url(img/carousel-2.jpg)">
        <div class="container-fulid ">
            <div class="row px-0 mx-0">
                <div class="col-md-3 col-1 bg-info-subtle px-0 h-md-auto" id="leftcol" style="min-height: 100vh;">
                    <div class="collapse show" id="leftcon">
                        <h4 class="d-md-flex  align-items-center d-none"><i class="fa-regular fa-user my-3 mx-2"></i>&ensp;Hello<%=" "+stname%></h4>
                        <a href="#" class="admin btn fw-semibold " data-bs-toggle="collapse" data-bs-target="#admin"><i class="fa-solid fa-user-tie fa-lg me-2" style="line-height: normal;"></i><span class="d-none d-md-inline">Admin dashboard</span></a>
                        <ul class="collapse list-group list-group-flush"  id="admin">
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="aabtn"><a href="#aacon" class="link-underline-opacity-0 list-group-item bg-transparent d-inline">Add Admin</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="tdbtn"><a href="#tdcon" class="link-underline-opacity-0 list-group-item bg-transparent d-inline" onclick="refresh()">Teacher Details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="tabtn"><a href="#atcon" class="link-underline-opacity-0 list-group-item bg-transparent">Add Teacher</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="utbtn"><a href="#utcon" class="link-underline-opacity-0 list-group-item bg-transparent">update Teacher</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="dtbtn"><a href="#dtcon" class="link-underline-opacity-0 list-group-item bg-transparent" onclick="refresh1()">Delete Teacher</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="fbdbtn"><a href="Admindashboard.jsp#fbdcon" class="link-underline-opacity-0 list-group-item bg-transparent">feedback Details</a></li>
                        </ul>
                        <div class="collapse show" id="leftcon">
                            <a href="#" class="teacher btn fw-semibold" data-bs-toggle="collapse" data-bs-target="#teacher"><i class="fa-solid fa-user-group fa-lg"></i><span class="d-none d-md-inline">Teacher dashboard</span></a>
                        </div>
                        <ul class="collapse list-group list-group-flush"  id="teacher">
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="sdbtn"><a href="#sdcon" class="link-underline-opacity-0 list-group-item bg-transparent d-inline" onclick="refresh2()">Student Details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="pdbtn"><a href="#pdcon" class="link-underline-opacity-0 list-group-item bg-transparent">parent Details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="asbtn" ><a href="#ascon" class="link-underline-opacity-0 list-group-item bg-transparent">admission form</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="usbtn"><a href="#uscon" class="link-underline-opacity-0 list-group-item bg-transparent">update Student</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="dsbtn"><a href="#dscon" class="link-underline-opacity-0 list-group-item bg-transparent">Delete Student</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="ambtn"><a href="#amcon" class="link-underline-opacity-0 list-group-item bg-transparent">add mark details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="smdbtn"><a href="#smdcon" class="link-underline-opacity-0 list-group-item bg-transparent">get mark details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="fdbtn"><a href="#fdcon" class="link-underline-opacity-0 list-group-item bg-transparent">fees details</a></li>
                            <li class="list-group-item  bg-transparent py-0 d-grid" id="ufbtn" ><a href="#ufcon" class="link-underline-opacity-0 list-group-item bg-transparent">add fees amount</a></li>
                        </ul>
                        <a href="index.jsp" class="teacher btn fw-semibold" ><i class="fa-solid fa-xmark fa-lg"></i><span class="d-none d-md-inline ms-2">Logout</span></a>
                    </div>
                </div>
                <div class="col-md-9 col-sm-10 position-relative ">
                    <div class="aacon col-md-8 col-sm-11 ms-3 my-3 shadow p-3 rounded-4" id="aacon">
                        <form action="#aacon" method="post">
                            <div class="col form-group pb-3">
                                <label for="aname" class="py-1 fs-6">Name</label>
                                <input type="text" id="aname" name="aname" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="name">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="aemail" class="py-1 fs-6">email</label>
                                <input type="email" id="aemail" name="aemail" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="email">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="amobileno" class="py-1 fs-6">Mobile No</label>
                                <input type="text" id="amobileno" name="amobileno" class="form-control form-control-dm py-2 rounded-4 bg-transparent" placeholder="Mobile No">
                            </div>
                            <label for="agender" class="py-1 fs-6 d-block">gender</label>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="agender" id="amale" value="male">
                                <label class="form-check-label" for="amale">male</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="agender" id="afemale" value="female">
                                <label class="form-check-label" for="afemale">female</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="agender" id="aothers" value="other">
                                <label class="form-check-label" for="aothers">others</label>
                            </div>
                            <div class="col form-group pb-3">
                                <label for="apass" class="py-1 fs-6">Password</label>
                                <input type="password" name="apass" id="apass" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="password">
                            </div>
                            <div class="d-grid gap-2 col-8 mx-auto pt-3">
                                <input type="submit" id="asub" name="addadmin" class="btn btn-primary py-2" value="submit">
                            </div>
                        </form>
                   <%      
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
                   try{
                    String aasubmit=request.getParameter("addadmin");
                   String aaname=request.getParameter("aname");
                   String aaemail=request.getParameter("aemail");
                   String aamobileno=request.getParameter("amobileno");
                   String aagender=request.getParameter("agender");
                   String aapass=request.getParameter("apass");
                   if(aasubmit!=null){ 
                  if(!aaname.equals("") && !aaemail.equals("") && !aamobileno.equals("") && aagender != null && !aapass.equals("")){
                      String aasql="exec sp_addAdmin '"+aaname+"','"+aaemail+"','"+aamobileno+"','"+aagender+"','"+aapass+"'";
                       PreparedStatement aapst=con.prepareStatement(aasql);
                       int aares=aapst.executeUpdate();
                       if(aares>0){
                        %>
                        <script>
                            alert("add success....");
                        </script>
                        <%
                           }
                           else{
                        %>
                        <script>
                            alert("add failled....");
                        </script>
                        <%
                    }
                    } 
                   else{
                        %>
                        <script>
                            alert("fill all column...");
                        </script>
                        <%
                   }
                    }
                       }
                       catch(Exception ex){
                       out.print(ex);
                       }
                        %>
                    </div>
                    <div class="col tdcon pt-4" id="tdcon">
                        <table class="table align-middle">
                            <thead>
                                <tr class="table-primary">
                                    <th scope="col">id</th>
                                    <th scope="col">name</th>
                                    <th scope="col">email</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">gender</th>
                                    <th scope="col">Qualification</th>
                                    <th scope="col">Salary</th> 
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                PreparedStatement pst;
                                ResultSet res;
                                String tdsql="exec sp_teacherDetails";
                                PreparedStatement tdpst=con.prepareStatement(tdsql);
                                ResultSet tdres=tdpst.executeQuery();
                                while(tdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=tdres.getString("id")%></td>
                                    <td><%=tdres.getString("name")%></td>
                                    <td><%=tdres.getString("email")%></td>
                                    <td><%=tdres.getString("mobileNo")%></td>
                                    <td><%=tdres.getString("gender")%></td>
                                    <td><%=tdres.getString("qualification")%></td>
                                    <td><%=tdres.getString("salary")%></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="atcon col-md-8 col-sm-11 ms-3 my-3 shadow p-3 rounded-4 bg-color-#dafffbb8" id="atcon">
                        <form action="#atdcon" method="post">
                            <div class="col form-group pb-3">
                                <label for="sname" class="py-1 fs-6">Name</label>
                                <input type="text" id="sname" name="tname" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="name">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="email" class="py-1 fs-6">email</label>
                                <input type="email" id="email" name="semail" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="email">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="mobileno" class="py-1 fs-6">Mobile No</label>
                                <input type="text" id="mobileno" name="smobileno" class="form-control form-control-dm py-2 rounded-4 bg-transparent" placeholder="Mobile No">
                            </div>
                            <label for="sgender" class="py-1 fs-6 d-block">gender</label>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="sgender" id="male" value="male">
                                <label class="form-check-label" for="male">male</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="sgender" id="female" value="female">
                                <label class="form-check-label" for="female">female</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="sgender" id="others" value="other">
                                <label class="form-check-label" for="others">others</label>
                            </div>
                            <div class="col form-group pb-3">
                                <label for="spass" class="py-1 fs-6">Password</label>
                                <input type="password" name="spass" id="spass" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="password">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="qualification" class="py-1 fs-6">qualification</label>
                                <input type="text" id="qualification" name="qualification" class="form-control form-control-dm py-2 rounded-4 bg-transparent" placeholder="qualification">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="salary" class="py-1 fs-6">salary</label>
                                <input type="text" name="salary" id="salary" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="salary">
                            </div>
                            <div class="d-grid gap-2 col-8 mx-auto pt-3">
                                <input type="submit" id="sub" name="addteacher" class="btn btn-primary py-2" value="signup">
                            </div>
                        </form>
                        <div id="atdcon"> 
                            <%
                                try{
                          String addteacher=request.getParameter("addteacher");           
                         String atname=request.getParameter("tname");
                         String atemail=request.getParameter("semail");
                         String atmobileno=request.getParameter("smobileno");
                         String atgender=request.getParameter("sgender");
                         String atpass=request.getParameter("spass");
                         String atdprt=request.getParameter("qualification");
                         String atsalary=request.getParameter("salary");
                         if(request.getParameter("addteacher")!=null){
                         if(atname.equals("")){
                            %>
                            <script>
                                alert("enter name");
                            </script>
                            <%
                            }
                          else if(atemail.equals("")){
                            %>
                            <script>
                                alert("enter email");
                            </script>
                            <%
                            }
                              else if(atmobileno.equals("")){
                            %>
                            <script>
                                alert("enter Mobile Number....");
                            </script>
                            <%
                            }
                          else if(atgender==null){
                            %>
                            <script>
                                alert("enter gender....");
                            </script>
                            <%
                            }
                            else if(atpass.equals("")){
                            %>
                            <script>
                                alert("enter password....");
                            </script>
                            <%
                            }
                              else if(atdprt.equals("")){
                            %>
                            <script>
                                alert("enter department....");
                            </script>
                            <%
                            }
                          else if(atsalary.equals("")){
                            %>
                            <script>
                                alert("enter salary....");
                            </script>
                            <%
                            }
                      else{
                      String atsql="exec sp_addTeacherDetails '"+atname+"','"+atemail+"','"+atmobileno+"','"+atgender+"','"+atpass+"','"+atdprt+"','"+atsalary+"'";
                       PreparedStatement atpst=con.prepareStatement(atsql);
                       int atres=atpst.executeUpdate();
                       if(atres>0){
                            %>
                            <script>
                                alert("add success....");
                                window.location.reload();
                            </script>
                            <%
                               }
                               else{
                            %>
                            <script>
                                alert("add failled....");
                            </script>
                            <%
                        }
                        } 
                           }
                               }
                               catch(Exception ex){
                               out.print(ex);
                               }
                            %>
                        </div>
                    </div>
                    <div class="col dtcon" id="dtcon">
                        <form action="#dtcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="dtid" name="dtid" placeholder="id">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="delete" class="btn btn-primary mb-3" name="dtiddetails">
                            </div>
                        </form>
                        <%
                            try{
                        String dtiddetails=request.getParameter("dtiddetails");
                        String dtid=request.getParameter("dtid");
                       if(dtid!=null){
                        String dtsql="exec sp_deleteteacher '"+dtid+"'";
                         PreparedStatement dtpst=con.prepareStatement(dtsql);
                         int dtres=dtpst.executeUpdate();
                         if(dtres>0){
                        %>
                        <script>
                            alert("delete success....");
                            window.location.reload();
                        </script>
                        <%
                           }
                       else{
                         
                       }
                           }
                        %>
                        <table class="table table-success">
                            <thead>
                                <tr>
                                    <th scope="col ">id</th>
                                    <th scope="col ">name</th>
                                    <th scope="col">password</th>
                                    <th scope="col">qualification</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">email</th>
                                    <th scope="col">Salary</th> 
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                String dtdsql="exec sp_teacherDetails";
                                PreparedStatement dtdpst=con.prepareStatement(dtdsql);
                                ResultSet dtdres=dtdpst.executeQuery();
                                while(dtdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=dtdres.getString("id")%></td>
                                    <td><%=dtdres.getString("name")%></td>
                                    <td><%=dtdres.getString("password")%></td>
                                    <td><%=dtdres.getString("qualification")%></td>
                                    <td><%=dtdres.getString("mobileno")%></td>
                                    <td><%=dtdres.getString("email")%></td>
                                    <td><%=dtdres.getString("salary")%></td>
                                </tr>
                                <% 
                                            }
                                    }
                                    catch(Exception ex){
                                    out.print(ex);
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col utcon" id="utcon">
                        <form action="#utcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="utid" name="utid" placeholder="id">
                            </div>
                            <div class="col-auto">
                                <select class="form-select" name="utlist">
                                    <option selected>Open this select menu</option>
                                    <option value="name">name</option>
                                    <option value="qualification">qualification</option>
                                    <option value="mobileno">mobile no</option>
                                    <option value="email">email</option>
                                    <option value="salary">salary</option>
                                    <option value="password">password</option>
                                </select>
                            </div>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="utvalue" name="utvalue" placeholder="update value">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="update" class="btn btn-primary mb-3" name="utiddetails"/>
                            </div>
                        </form>
                        <%
                         try{
                         String upiddetails=request.getParameter("utiddetails");
                         String utdlist=request.getParameter("utlist");
                         String utdvalue=request.getParameter("utvalue");
                        String utdid=request.getParameter("utid");
                        if(upiddetails!=null){
                        if(utdlist.equals("")||utdvalue.equals("")||utdid.equals("")){
                        %>
                        <script>
                            alert("Fill all column");
                        </script>
                        <%
                           }
                       else{
                       String utdsql="exec sp_tdUpdate '"+utdlist+"','"+utdvalue+"','"+utdid+"'";
                        PreparedStatement utdpst=con.prepareStatement(utdsql);
                       int utdres=utdpst.executeUpdate();
                       if(utdres>0){
                          }
                          else{
                          }
                                }
                            }
                        %>
                        <table class="table table-success">
                            <thead>
                                <tr>
                                    <th scope="col ">id</th>
                                    <th scope="col ">name</th>
                                    <th scope="col">password</th>
                                    <th scope="col">qualification</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">email</th>
                                    <th scope="col">Salary</th> 
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                String utsql="exec sp_teacherDetails";
                                PreparedStatement utpst=con.prepareStatement(utsql);
                                ResultSet utres=utpst.executeQuery();
                                while(utres.next())
                                {
                                %>
                                <tr>
                                    <td><%=utres.getString("id")%></td>
                                    <td><%=utres.getString("name")%></td>
                                    <td><%=utres.getString("password")%></td>
                                    <td><%=utres.getString("qualification")%></td>
                                    <td><%=utres.getString("mobileno")%></td>
                                    <td><%=utres.getString("email")%></td>
                                    <td><%=utres.getString("salary")%></td>
                                </tr>
                                <% 
                                            }
                                    }
                                    catch(Exception ex){
                                    out.print(ex);
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col fbdcon" id="fbdcon">
                        <table class="table table-success">
                            <thead>
                                <tr>
                                    <th scope="col ">name</th>
                                    <th scope="col">feedback detail</th> 
                                    <th scope="col">delete</th> 
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                String fbdsql="exec sp_fetchFbDetails";
                                PreparedStatement fbdpst=con.prepareStatement(fbdsql);
                                ResultSet fbdres=fbdpst.executeQuery();
                                while(fbdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=fbdres.getString("name")%></td>
                                    <td><%=fbdres.getString("fbmsg")%></td>
                                    <td><form action="#fbdcon" method="post"">
                                            <input type="hidden" name="fbddId" value="<%=fbdres.getString("id")%>">
                                            <input type="submit" value="delete" class="btn btn-primary mb-3" name="dfbid">
                                        </form></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                        <%
                    String dfbid=request.getParameter("dfbid");
                       String fbddId=request.getParameter("fbddId");
                        if(dfbid!=null){
                          if(fbddId!=null){
                         String dfbsql="exec sp_dfbDetails '"+fbddId+"'";
                          PreparedStatement dfbpst=con.prepareStatement(dfbsql);
                        int dfbres=dfbpst.executeUpdate();
                           if(dfbres>0){
                        %>
                        <script>
                            window.location.reload();
                        </script>
                        <%
                            }
                            else{
                            }
                         }
                          }
                        %>
                    </div>
                    <div class="col sdcon pt-4" id="sdcon">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col ">reg_no</th>
                                    <th scope="col">name</th>
                                    <th scope="col">DOB</th>
                                    <th scope="col">email</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">gender</th>
                                    <th scope="col">password</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                String sdsql="exec sp_StdDetails";
                                PreparedStatement sdpst=con.prepareStatement(sdsql);
                                ResultSet sdres=sdpst.executeQuery();
                                while(sdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=sdres.getString("reg_no")%></td>
                                    <td><%=sdres.getString("name")%></td>
                                    <td><%=sdres.getString("dob")%></td>
                                    <td><%=sdres.getString("email")%></td>
                                    <td><%=sdres.getString("mobileno")%></td>
                                    <td><%=sdres.getString("gender")%></td>
                                    <td><%=sdres.getString("password")%></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="ascon col-md-8 col-sm-11 ms-3 my-3 shadow p-3 rounded-4" id="ascon">
                        <form action="assStudentjsp.jsp" method="post">
                            <div class="col form-group pb-3">
                                <label for="sRegno" class="py-1 fs-6">register number</label>
                                <input type="int" id="sregno" name="sregno" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="register number">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="sname" class="py-1 fs-6">Name</label>
                                <input type="text" id="asname" name="asname" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="name">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="sname" class="py-1 fs-6">father Name</label>
                                <input type="text" id="afname" name="afname" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="father name">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="sname" class="py-1 fs-6">Name</label>
                                <input type="text" id="amname" name="amname" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="mother name">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="dob" class="py-1 fs-6">Date Of Birth</label>
                                <input type="date" id="asdob" name="asdob" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="Date Of Birth">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="email" class="py-1 fs-6">email</label>
                                <input type="email" id="asemail" name="asemail" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="email">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="email" class="py-1 fs-6">parent email</label>
                                <input type="email" id="apemail" name="apemail" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="parent email">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="mobileno" class="py-1 fs-6">Mobile No</label>
                                <input type="text" id="asmobileno" name="asmobileno" class="form-control form-control-dm py-2 rounded-4 bg-transparent" placeholder="primary Mobile No">
                            </div>
                            <div class="col form-group pb-3">
                                <label for="mobileno" class="py-1 fs-6">Mobile No</label>
                                <input type="text" id="apmobileno" name="apmobileno" class="form-control form-control-dm py-2 rounded-4 bg-transparent" placeholder=" secondery Mobile No">
                            </div>
                            <label for="asgender" class="py-1 fs-6 d-block">gender</label>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="asgender" id="asmale" value="male">
                                <label class="form-check-label" for="male">male</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="asgender" id="asfemale" value="female">
                                <label class="form-check-label" for="male">female</label>
                            </div>
                            <div class="form-check-inline">
                                <input class="form-check-input" type="radio" name="asgender" id="asothers" value="other">
                                <label class="form-check-label" for="male">others</label>
                            </div>
                            <div class="col form-group pb-3">
                                <label for="spass" class="py-1 fs-6">Password</label>
                                <input type="password" name="aspass" id="aspass" class="form-control form-control-md py-2 rounded-4 bg-transparent" placeholder="password" autocomplete="current-password">
                            </div>
                            <div class="d-grid gap-2  mx-auto pt-3">
                                <input type="submit" id="assub" name="aaddstudent" class="btn btn-primary py-2" value="signup">
                            </div>
                        </form>
                    </div>
                    <div class="col pdcon pt-4" id="pdcon">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col ">reg_no</th>
                                    <th scope="col">name</th>
                                    <th scope="col">father name</th>
                                    <th scope="col">mother name</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">email</th>
                                    <th scope="col">password</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                               String pdsql="exec sp_parentDetail";
                                PreparedStatement pdpst=con.prepareStatement(pdsql);
                                ResultSet pdres=pdpst.executeQuery();
                                while(pdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=pdres.getString("reg_no")%></td>
                                    <td><%=pdres.getString("name")%></td>
                                    <td><%=pdres.getString("fathername")%></td>
                                    <td><%=pdres.getString("motherName")%></td>
                                    <td><%=pdres.getString("mobileno")%></td>
                                    <td><%=pdres.getString("email")%></td>
                                    <td><%=pdres.getString("password")%></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col uscon" id="uscon">
                        <form action="#uscon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="usid" name="usid" placeholder="Register number">
                            </div>
                            <div class="col-auto">
                                <select class="form-select" name="uslist">
                                    <option selected>Open this select menu</option>
                                    <option value="name">name</option>
                                    <option value="mobileno">mobile no</option>
                                    <option value="email">email</option>
                                    <option value="password">password</option>
                                </select>
                            </div>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="usvalue" name="usvalue" placeholder="update value">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="update" class="btn btn-primary mb-3" name="usiddetails">
                            </div>
                        </form>
                        <%
                         String usdlist=request.getParameter("uslist");
                         String usdvalue=request.getParameter("usvalue");
                        String usdid=request.getParameter("usid");
                       if(request.getParameter("usiddetails")!=null){
                        String usdsql="exec sp_sdUpdate '"+usdlist+"','"+usdvalue+"','"+usdid+"'";
                         PreparedStatement usdpst=con.prepareStatement(usdsql);
                         int usdres=usdpst.executeUpdate();
                         if(usdres>0){
                        %>
                        <script>
                            alert("update success....");
                        </script>
                        <%
                           }
                           else{
                        %>
                        <script>
                            alert("update failled....");
                        </script>
                        <%
                           }
                           }
                        %>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">id</th>
                                    <th scope="col">reg_no</th>
                                    <th scope="col ">name</th>
                                    <th scope="col">password</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">email</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                 String ussql="exec sp_StdDetails";
                                PreparedStatement uspst=con.prepareStatement(ussql);
                                ResultSet usres=uspst.executeQuery();
                                while(usres.next())
                                {
                                %>
                                <tr>
                                    <td><%=usres.getString("id")%></td>
                                    <td><%=usres.getString("reg_no")%></td>
                                    <td><%=usres.getString("name")%></td>
                                    <td><%=usres.getString("password")%></td>
                                    <td><%=usres.getString("mobileno")%></td>
                                    <td><%=usres.getString("email")%></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col dscon" id="dscon">
                        <form action="#dscon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="dsid" name="dsid" placeholder="Register number">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="delete" class="btn btn-primary mb-3" name="dsiddetails">
                            </div>
                        </form>
                        <%
                        String dsid=request.getParameter("dsid");
                         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                        Connection dscon=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
                       if(dsid!=null){
                        String dssql="exec sp_deleteStd '"+dsid+"'";
                         PreparedStatement dspst=con.prepareStatement(dssql);
                         int dsres=dspst.executeUpdate();
                         if(dsres>0){
                        %>
                        <script>
                            alert("delete success....");
                            window.location.reload();
                        </script>
                        <%
                           }
                           else{
                           }
                           }
                        %>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col ">id</th>
                                    <th scope="col ">reg_no</th>
                                    <th scope="col ">name</th>
                                    <th scope="col">gender</th>
                                    <th scope="col">Mobile No</th>
                                    <th scope="col">email</th>
                                </tr>
                            </thead>
                            <tbody class="table-group-divider">
                                <%
                                String dsdsql="exec sp_StdDetails";
                                PreparedStatement dsdpst=con.prepareStatement(dsdsql);
                                ResultSet dsdres=dsdpst.executeQuery();
                                while(dsdres.next())
                                {
                                %>
                                <tr>
                                    <td><%=dsdres.getString("id")%></td>
                                    <td><%=dsdres.getString("reg_no")%></td>
                                    <td><%=dsdres.getString("name")%></td>
                                    <td><%=dsdres.getString("gender")%></td>
                                    <td><%=dsdres.getString("mobileno")%></td>
                                    <td><%=dsdres.getString("email")%></td>
                                </tr>
                                <% 
                                            }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="amcon col-md-8 col-sm-11 ms-3 my-3 shadow p-3 rounded-4" id="amcon">
                        <form action="#amcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="amregno" class="py-1 fs-5">Register Number</label>
                                    <input type="number" class="form-control" id="amregno" name="amregno" placeholder="Register number">
                                </div>
                                <div class="col-auto">
                                    <label for="amname" class="py-1 fs-5">Name</label>
                                    <input type="text" class="form-control" id="anname" name="amname" placeholder="name">
                                </div>
                            </div>
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="amtamil" class="py-1 fs-5">Tamil</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" class="form-control" id="amtamil" name="amtamil" placeholder="marks">
                                </div>
                            </div>
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="amenglish" class="py-1 fs-5">english</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" class="form-control" id="amenglish" name="amenglish" placeholder="marks">
                                </div>
                            </div>
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="ammaths" class="py-1 fs-5">Maths</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" class="form-control" id="ammaths" name="ammaths" placeholder="marks">
                                </div>
                            </div>
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="amscience" class="py-1 fs-5">Science</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" class="form-control" id="amscience" name="amscience" placeholder="marks">
                                </div>
                            </div>
                            <div class="row my-3 justify-content-center">
                                <div class="col-auto">
                                    <label for="amsocial" class="py-1 fs-5">Social</label>
                                </div>
                                <div class="col-auto">
                                    <input type="text" class="form-control" id="amsocial" name="amsocial" placeholder="marks">
                                </div>
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="update" class="btn btn-primary mb-3" name="amdetails">
                            </div>
                        </form>
                        <% 
                             String amregno=request.getParameter("amregno");
                             String amname=request.getParameter("amname");
                             String amtamil=request.getParameter("amtamil");
                             String amenglish=request.getParameter("amenglish");
                             String ammaths=request.getParameter("ammaths");
                             String amscience=request.getParameter("amscience");
                             String amsocial=request.getParameter("amsocial");
                             String amdetails=request.getParameter("amdetails");
                                   if(request.getParameter("amdetails")!=null){
                                   if(amname!= null && amregno!= null && amtamil != null && amenglish != null && ammaths != null && amscience != null && amsocial!= null){
                                    String amsql="exec sp_addMarks '"+amname+"','"+amregno+"','"+amtamil+"','"+amenglish+"','"+ammaths+"','"+amscience+"','"+amsocial+"'";
                                     PreparedStatement ampst=con.prepareStatement(amsql);
                                     int amres=ampst.executeUpdate();
                                     if(amres>0){
                        %>
                        <script>
                            alert("add success....");
                        </script>
                        <%
                           }
                           else{
                        %>
                        <script>
                            alert("add failled....");
                        </script>
                        <%
                    }
                   }   
                           }
                        %>
                    </div>
                    <div class="col smdcon" id="smdcon">
                        <form action="#smdcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="smdregno" name="smdregno" placeholder="Register number">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="show" class="btn btn-primary mb-3" name="smdsub">
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
                                    String smdsub=request.getParameter("smdsub");
                                    if(smdsub!=null){
                                String smdregno=request.getParameter("smdregno");
                                String smdsql="exec sp_fetchmarks '"+smdregno+"'";
                                PreparedStatement smdpst=con.prepareStatement(smdsql);
                                ResultSet smdres=smdpst.executeQuery();
                                while(smdres.next()) {
                                %>
                                <tr>
                                    <td><%=smdres.getString("reg_no")%></td>
                                    <td><%=smdres.getString("name")%></td>
                                    <td><%=smdres.getString("tamil")%></td>
                                    <td><%=smdres.getString("english")%></td>
                                    <td><%=smdres.getString("maths")%></td>
                                    <td><%=smdres.getString("science")%></td>
                                    <td><%=smdres.getString("social")%></td>
                                    <td><%=smdres.getString("total")%></td>
                                    <td><%=smdres.getString("average")%>%</td>

                                </tr>
                                <% 
                                            }
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col fdcon" id="fdcon">
                        <form action="#fdcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="fdreno" name="fdregno" placeholder="Register number">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="feesdetails" class="btn btn-primary mb-3" name="fdiddetails">
                            </div>
                        </form>
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
                                 try{
                                 String fdregno=request.getParameter("fdregno");
                                 String fdiddetails=request.getParameter("fdiddetails");
                                 if(fdiddetails!=null){
                                 fdiddetails=null;
                                 if(!fdregno.equals("")){
                                 String fdsql="exec sp_feesView "+fdregno;
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
                                            }
                                        }
                                    }
                                    catch(Exception ex){
                                    out.print(ex);
                                    }
                                %>
                            </tbody>
                        </table>
                    </div>
                    <div class="col ufcon" id="ufcon">
                        <form action="#ufcon" method="post" class="row g-3 pt-4 justify-content-center">
                            <div class="col-auto">
                                <input type="number" class="form-control" id="ufreno" name="ufregno" placeholder="Register number">
                            </div>
                            <div class="col-auto">
                                <input type="text" class="form-control" id="ufvalue" name="ufvalue" placeholder="enter fees">
                            </div>
                            <div class="col-auto">
                                <input type="submit" value="update fees" class="btn btn-primary mb-3" name="ufiddetails">
                            </div>
                        </form>
                        <%
                         try{
                       String ufvalue=request.getParameter("ufvalue");
                        String ufregno=request.getParameter("ufregno");
                       if(request.getParameter("ufiddetails")!=null){
                       if(ufvalue.equals("") || ufregno.equals("")){
                        }
                        else{
                        String ufsql="exec sp_feesupdate '"+ufregno+"','"+ufvalue+"'";
                         PreparedStatement ufpst=con.prepareStatement(ufsql);
                         int ufres=ufpst.executeUpdate();
                         if(ufres>0){
                        %>
                        <script>
                            alert("update success....");
                        </script>
                        <%
                           }
                           else{
                        %>
                        <script>
                            alert("update failled....");
                        </script>
                        <%
                           }
                           }
                           }
                        %>
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
                                 if(ufregno!=null){
                                 if(ufregno.equals("")){
                                    }
                                    else{
                                 String ufdsql="exec sp_feesView "+ufregno;
                                PreparedStatement ufdpst=con.prepareStatement(ufdsql);
                                ResultSet ufdres=ufdpst.executeQuery();
                                while(ufdres.next()){
                                %>
                                <tr>
                                    <td><%=ufdres.getString("reg_no")%></td>
                                    <td><%=ufdres.getString("name")%></td>
                                    <td><%=ufdres.getString("totalFees")%></td>
                                    <td><%=ufdres.getString("fees_Paid")%></td>
                                    <td><%=ufdres.getString("fees_Balance")%></td>
                                </tr>
                                <% 
                                            }
                                        }
                                     }
                                }
                                 catch(Exception ex){
                                  out.print(ex);
                                }
                                %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div> 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    <script>
      function refresh( ){
          window.location.assign("http://localhost:8080/JSPProject/Admindashboard.jsp#tdcon");
          window.location.reload();
      }
      function refresh1( ){
          window.location.assign("http://localhost:8080/JSPProject/Admindashboard.jsp#dtcon");
          window.location.reload();
      }
      function refresh2( ){
          window.location.assign("http://localhost:8080/JSPProject/Admindashboard.jsp#sdcon");
          window.location.reload();
      } 
    </script>
</body>
</html>
