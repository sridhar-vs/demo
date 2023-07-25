
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<% 
                        String asregno=request.getParameter("sregno");
                        String asname=request.getParameter("asname");
                         String afname=request.getParameter("afname");
                         String amdname=request.getParameter("amname");
                        String asdob=request.getParameter("asdob");
                        String asemail=request.getParameter("asemail");
                        String apemail=request.getParameter("apemail");
                        String asmobileno=request.getParameter("asmobileno");
                        String apmobileno=request.getParameter("apmobileno");
                        String asgender=request.getParameter("asgender");
                        String aspass=request.getParameter("aspass");
                        try{
                              if(request.getParameter("aaddstudent")!=null){
                              if(!asregno.equals("") && !asname.equals("") && !afname.equals("") && !amdname.equals("")&& !asdob.equals("")&& !asemail.equals("")&& !apemail.equals("")&& !asmobileno.equals("")&& !apmobileno.equals("")&& !asgender.equals("")&& !aspass.equals("")){ 
                               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                                Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_School","sridhar","sridhar");
                                String assql="exec sp_addStudent '"+asregno+"','"+asname+"','"+afname+"','"+amdname+"','"+asdob+"','"+asemail+"','"+apemail+"','"+apmobileno+"','"+asmobileno+"','"+asgender+"','"+aspass+"'";
                                PreparedStatement aspst=con.prepareStatement(assql);
                                int asres=aspst.executeUpdate();
                                if(asres>0){
                                response.sendRedirect("Admindashboard.jsp");
                               }
                                else{
                                %>
                                <script>
                                    alert("fill all column.....");
                                </script>
                                <%
                                response.sendRedirect("Admindashboard.jsp");
                               }
                            }
                            else{
                            %>
                                <script>
                                    alert("fill all column.....");
                                    window.location.assign("http://localhost:8080/JSPProject/Admindashboard.jsp");
                                </script>
                                <%
                            }
                           }  
                           if(request.getParameter("taddstudent")!=null){
                              if(!asregno.equals("") && !asname.equals("") && !afname.equals("") && !amdname.equals("")&& !asdob.equals("")&& !asemail.equals("")&& !apemail.equals("")&& !asmobileno.equals("")&& !apmobileno.equals("")&& !asgender.equals("")&& !aspass.equals("")){ 
                               Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                                Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_School","sridhar","sridhar");
                                String assql="exec sp_addStudent '"+asregno+"','"+asname+"','"+afname+"','"+amdname+"','"+asdob+"','"+asemail+"','"+apemail+"','"+apmobileno+"','"+asmobileno+"','"+asgender+"','"+aspass+"'";
                                PreparedStatement aspst=con.prepareStatement(assql);
                                int asres=aspst.executeUpdate();
                                if(asres>0){
                                response.sendRedirect("Teacherdashboard.jsp");
                               }
                                else{
                                %>
                                <script>
                                    alert("fill all column.....");
                                </script>
                                <%
                                response.sendRedirect("Teacherdashboard.jsp");
                               }
                            }
                            else{
                            %>
                                <script>
                                    alert("fill all column.....");
                                    window.location.assign("http://localhost:8080/JSPProject/Teacherdashboard.jsp");
                                </script>
                                <%
                            }
                           }
                            }
                           catch(Exception ex){
                           out.print(ex);
                            }
                        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1></h1>
    </body>
</html>
