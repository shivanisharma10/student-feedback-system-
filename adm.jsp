<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
         <link rel="stylesheet" type="text/css" href="theme.css">
    </head>
    <body>
    <div class="login">
	<h1>Create Account</h1>
    <form method="post" action="">
    	<input type="text" name="fname" placeholder="First Name" required="required" />
        <input type="email" name="ROLL" placeholder="Email/User Name" required="required" />
        <input type="text" name="mnumber" placeholder="Mobile Number" required="required" />
        <input type="text" name="PASSWD" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Submit Me.</button>
    </form>
        <div class="click">
          <a href="home.html">Sign Up</a>
        </div>
</div>
        <%
try
{
	int x, t=0, flag=0;
	String sql;
	String str1, str2, str3, str4, str5, str6;
	str1=request.getParameter("fname");
	str2=request.getParameter("ROLL");
	str3=request.getParameter("mnumber");
	str4=request.getParameter("PASSWD");
	if( str1 != null || str2 != null || str3 != null || str4 != null)
	{	
		Class.forName("org.apache.derby.jdbc.ClientDriver");
 		Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/root","root","root");
		Statement s =c.createStatement();
		sql = "select * from student";
		ResultSet rs=s.executeQuery(sql);
		while(rs.next())
		{
			x=rs.getInt("sid");	
			if(x!=0)
			{
				if(t<x)
					t=x;
			}
			
		}
		if(flag==0)
		{
			sql = "insert into student values ("+(t+1)+",'"+str1+"','"+str2+"','"+str3+"','"+str4+"')";
			s.execute(sql);
			%><jsp:forward page="home.html"/> <%
		}
	}	
}catch(Exception e){}
%>
    </body>
</html>