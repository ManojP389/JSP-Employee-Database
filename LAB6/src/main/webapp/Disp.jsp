<%@ page import="java.sql.*" %>

<html>
<head>
<title>Employee Details</title>
</head>

<body>

<h2>Employee Details</h2>

<table border="1" cellpadding="10">

<tr>
<th>E.No</th>
<th>Name</th>
<th>Gender</th>
<th>Department</th>
<th>Salary</th>
</tr>

<%
try
{
Class.forName("com.mysql.cj.jdbc.Driver");

Connection con=DriverManager.getConnection(
"jdbc:mysql://localhost:3306/god",
"root",
"root123");

Statement st=con.createStatement();

ResultSet rs=st.executeQuery("select * from employees");

while(rs.next())
{
%>

<tr>
<td><%=rs.getInt(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getFloat(5)%></td>
</tr>

<%
}

rs.close();
st.close();
con.close();

}
catch(Exception e)
{
out.println(e);
}
%>

</table>

<br>

<a href="Insert.jsp">← Back</a>

</body>
</html>