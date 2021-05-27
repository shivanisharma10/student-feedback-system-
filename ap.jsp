<%-- 
    Document   : ap
    Created on : May 26, 2021, 8:16:03 PM
    Author     : Quick Computer
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   
        <% 
    int a1=0,b1=0,c2=0,d2=0,e2=0,f1=0,g1=0,h1=0;
                        String dname=request.getParameter("dname");
			String tname=request.getParameter("tname");
			String sub=request.getParameter("sub");
			String a=request.getParameter("A");
                        if(a!=null)
			 a1=Integer.parseInt(a);
                      
			String b=request.getParameter("B");
                          if(b!=null)
			 b1=Integer.parseInt(b);
			String c=request.getParameter("C");
                          if(c!=null)
			 c2=Integer.parseInt(c);
			String d=request.getParameter("D");
                          if(d!=null)
			 d2=Integer.parseInt(d);
			String e=request.getParameter("E");
                          if(e!=null)
			 e2=Integer.parseInt(e);
			String f=request.getParameter("F");
                          if(f!=null)
			 f1=Integer.parseInt(f);
			String g=request.getParameter("G");
                          if(g!=null)
			g1=Integer.parseInt(g);
			String h=request.getParameter("H");
                          if(h!=null)
			 h1=Integer.parseInt(h);
			Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection c1=DriverManager.getConnection("jdbc:derby://localhost:1527/root","root","root");
			Statement s =c1.createStatement();
			String sql=null;
			String sql2=null;
			ResultSet rs=null;
			int num=0;
			switch(a1)
			{
			case 1:
				sql2="select * from teacherreportA where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportA set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportA values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportA where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportA set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportA values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportA where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportA set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportA values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportA where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportA set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportA values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(b1)
			{
			case 1:
				sql2="select * from teacherreportB where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportB set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportB values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportB where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportB set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportB values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportB where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportB set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportB values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportB where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportB set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportB values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(c2)
			{
			case 1:
				sql2="select * from teacherreportC where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportC set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportC values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportC where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportC set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportC values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportC where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportC set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportC values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportC where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportC set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportC values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(d2)
			{
			case 1:
				sql2="select * from teacherreportD where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportD set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportD values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportD where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportD set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportD values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportD where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportD set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportD values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportD where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportD set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportD values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(e2)
			{
			case 1:
				sql2="select * from teacherreportE where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportE set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportE values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportE where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportE set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportE values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportE where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportE set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportE values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportE where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportE set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportE values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(f1)
			{
			case 1:
				sql2="select * from teacherreportF where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportF set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportF values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportF where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportF set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportF values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportF where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportF set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportF values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportF where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportF set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportF values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(g1)
			{
			case 1:
				sql2="select * from teacherreportG where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportG set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportG values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportG where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportG set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportG values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportG where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportG set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportG values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportG where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportG set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportG values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			switch(h1)
			{
			case 1:
				sql2="select * from teacherreportH where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o1")+1;
					sql="update teacherreportH set o1="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportH values('"+dname+"','"+tname+"','"+sub+"',"+num+",0,0,0)";
				}
				break;
			case 2:
				sql2="select * from teacherreportH where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o2")+1;
					sql="update teacherreportH set o2="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportH values('"+dname+"','"+tname+"','"+sub+"',0,"+num+",0,0)";
				}
				break;
			case 3:
				sql2="select * from teacherreportH where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o3")+1;
					sql="update teacherreportH set o3="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportH values('"+dname+"','"+tname+"','"+sub+"',0,0,"+num+",0)";
				}
				break;
			case 4:
				sql2="select * from teacherreportH where tname='"+tname+"'";
				try
				{
					rs=s.executeQuery(sql2);
					rs.next();
					num=rs.getInt("o4")+1;
					sql="update teacherreportH set o4="+num+" where tname='"+tname+"'";
				}catch(SQLException e1)
				{
					num=1;
					sql="insert into teacherreportH values('"+dname+"','"+tname+"','"+sub+"',0,0,0,"+num+")";
				}
				break;
			}
			s.execute(sql);
			response.sendRedirect("thank.html");
%>
    </body>
</html>
