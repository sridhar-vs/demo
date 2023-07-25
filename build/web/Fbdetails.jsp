<%-- 
    Document   : Fbdetails
    Created on : 07-Jul-2023, 7:51:31 am
    Author     : sridh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <div id="insertfeedback">
                  <% 
                  String fbname=request.getParameter("fbname");
                  String fbemail=request.getParameter("fbemail");
                  String fbmsg=request.getParameter("fbmsg");
                  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
                  Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
                  PreparedStatement pst=null;
                  if(fbname!= null && fbemail != null && fbmsg != null){
                  String sql="exec sp_insertFbDetails ?,?,?";
                  pst=con.prepareStatement(sql);
                  pst.setString(1,fbname);
                  pst.setString(2,fbemail);
                  pst.setString(3,fbmsg);
                  int res=pst.executeUpdate();
                         if(res>0){
                         response.sendRedirect("index.jsp#contact");
                      }
                      }
                      else{
                      response.sendRedirect("index.jsp#contact");
                      }
                   %>
              </div>
              <div id="dfbcon">
                  
              </div>
              
    </body>
</html>
