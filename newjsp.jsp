<%-- 
    Document   : newjsp
    Created on : 25 Dec, 2024, 12:46:32 PM
    Author     : kanun
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DBJSP</title>
    </head>
    <body bgcolor="cyan">
<!--        <h1>Hello Atharv!</h1>-->
        <%
            Connection con=null;
            Statement st=null;
            ResultSet rs=null;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded");
            Thread.sleep(1000);
            
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/csv_import", "root", "root");
            System.out.println("Connected");
            Thread.sleep(1000);
            
            st=con.createStatement();
            
            String query="SELECT * FROM finalci1";
            rs=st.executeQuery(query);
            
            
            %>
<table width="1000" border="1" style="border-collapse: collapse; text-align: center;">
    <thead width="1000">
        <tr width="1000">
            <th>Column 1</th>
            <th>Column 2</th>
            <th>Column 3</th>
            <th>Column 4</th>
            <th>Column 5</th>
            <th>Column 6</th>
            <th>Column 7</th>
            <th>Column 8</th>
            <th>Column 9</th>
        </tr>
    </thead>
            <%
                while(rs.next())
                {
                    %>
                    <table width="1000" border="5">
                <tr>
                    <td><strong><%=rs.getString(1)%></strong></td>
                    <td><strong><%=rs.getString(2)%></strong></td>
                    <td><strong><%=rs.getString(3)%></strong></td>
                    <td><strong><%=rs.getString(4)%></strong></td>
                    <td><strong><%=rs.getString(5)%></strong></td>
                    <td><strong><%=rs.getString(6)%></strong></td>
                    <td><strong><%=rs.getString(7)%></strong></td>
                    <td><strong><%=rs.getString(8)%></strong></td>
                    <td><strong><%=rs.getString(9)%></strong></td>
                </tr>
                    </table>
                        
        
                    <%
                }
            %>
        
        
        <%
            con.close();
            }
            catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
            
            
        %>
    </body>
</html>
