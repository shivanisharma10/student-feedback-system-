<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<%
String  name, password;
String t2=new String();
int flag=0;
String t=request.getParameter("t");
if(t.equals("2"))
{
	name=request.getParameter("Name");
	password=request.getParameter("PASSWORD");
        try{
	Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/root","root","root");
	Statement s =c.createStatement();
	String sql = "select * from student where ROLL='"+name+"' and passwd='"+password+"'" ;
	ResultSet rs=s.executeQuery(sql);
	if(rs.next())

flag=1;
else
flag=0;
if(flag==1)
{
//session.setAttribute("user",str1);
%>
<jsp:forward page="studenthome.jsp" />
<%
}
else
out.println("UserName/Password Not Valid");
rs.close();
s.close();
c.close();
}catch(Exception e) { out.println(e);}
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>TEACHER LOGIN FORM</title>

<link rel="stylesheet" type="text/css" href="theme.css">
    </head>
    <body>
        <div class="login">
	<h1>Login</h1>
        <form method="post" action="">
    	<input type="text" name="Name" placeholder="Username" required="required" />
        <input type="password" name="PASSWORD" placeholder="Password" required="required" />
        <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
        </form>
         <div class="click">
          <a href="adm.jsp">NewHere</a>
        </div>
</div>
    </body>
</html>
