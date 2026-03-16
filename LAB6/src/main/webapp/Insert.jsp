<%@ page import="java.sql.*" %>
<html>
<body bgcolor="#ffffcc">

<h2>Employee Insert Form</h2>

<form action="Insert.jsp" method="post">

Employee No : <input type="text" name="eno"><br><br>
Employee Name : <input type="text" name="name"><br><br>
Gender : <input type="text" name="gender"><br><br>
Department : <input type="text" name="dept"><br><br>
Salary : <input type="text" name="salary"><br><br>

<input type="submit" value="Insert">

</form>

<%

int result = 0;

if(request.getParameter("eno") != null){

try{

Class.forName("com.mysql.cj.jdbc.Driver");

Connection con = DriverManager.getConnection(
"jdbc:mysql://localhost:3306/god",
"root",
"root123");

PreparedStatement ps = con.prepareStatement(
"INSERT INTO employees VALUES(?,?,?,?,?)");

ps.setInt(1,Integer.parseInt(request.getParameter("eno")));
ps.setString(2,request.getParameter("name"));
ps.setString(3,request.getParameter("gender"));
ps.setString(4,request.getParameter("dept"));
ps.setFloat(5,Float.parseFloat(request.getParameter("salary")));

result = ps.executeUpdate();

con.close();

}catch(Exception e){
out.println(e);
}

}

if(result>0){
out.println("<h3>Record Inserted Successfully</h3>");
}

%>

</body>
</html>