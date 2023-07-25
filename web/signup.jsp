<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
    String sname=request.getParameter("sname");
    String sdob=request.getParameter("sdob");
    String semail=request.getParameter("semail");
    String smobileno=request.getParameter("smobileno");
    String sgender=request.getParameter("sgender");
    String spass=request.getParameter("spass");
    PreparedStatement pst;
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); 
    Connection con=DriverManager.getConnection("jdbc:sqlserver://localhost:1433;encrypt=true;TrustServerCertificate=true;databaseName=db_school","sridhar","sridhar");
    if(sname.isEmpty()||sdob.isEmpty()||semail.isEmpty()||smobileno.isEmpty()||sgender.isEmpty()||spass.isEmpty()){
        response.sendRedirect("index.jsp");
    }
    else{
    String sql ="exec sp_signup '"+sname+"','"+sdob+"','"+semail+"','"+smobileno+"','"+sgender+"','"+spass+"'";
    pst=con.prepareStatement(sql);
    int i= pst.executeUpdate();
    if(i>0){
    response.sendRedirect("index.jsp");
    }
    else{
    out.print("signup failled.....");
    }
    }
%>