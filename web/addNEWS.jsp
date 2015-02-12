<%-- 
    Document   : addNEWS
    Created on : Feb 11, 2015, 9:57:07 PM
    Author     : irosh
--%>

<%@page import="java.sql.*,java.util.*"%>
<%
    String title = request.getParameter("txt_title");
    String body = request.getParameter("txt_body");
    String startDate = request.getParameter("txt_startDate");
    String expiryDate = request.getParameter("txt_expiryDate");
    
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ds", "root", "");
        Statement st = con.createStatement();
        int i = st.executeUpdate("insert into announcement(id,title,body,startDate,expiryDate) values(0,'" + title + "','" + body + "','" + startDate + "','" + expiryDate + "')");
        
        if(i==1){
           out.println("Data is successfully inserted!");
        }else{
            out.println("Error");
        }
    } catch (Exception e) {
        System.out.print(e);
        e.printStackTrace();
    }
%>
