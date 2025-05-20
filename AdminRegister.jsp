<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign Up</title>
    <style>
      body{
       background-image: url(images/lol.jpg);
   
        background-repeat: no-repeat;
         background-size: cover;       
      
      }
        table{
            padding: 10px;
            font-size: 20px;
            color: rgb(255, 255, 255);
            margin-top: 200px;
            padding: 25px;  
            background-image: url(images/Ai3.jpg);
        border-radius: 60px;
            background-position: center;
            background-attachment: local;
            background-size: contain;
            position: relative;
                    
        }
        .button {
           margin: 20px,10px,20px,20px;
            padding: 0.1rem 1rem;
            border-radius: 0.25rem;
            background-color: rgba(61, 53, 124, 0.616);
            color: rgb(255, 255, 255);
            font-size: 1rem;
            transition: background-color 0.2s;
            &:hover,:focus {
            outline: none;
            background-color: rgb(9, 64, 136);
            }
  }    
  h2{
font-size: 25px;
font-style: italic;

}
      
         
    </style>
</head>
<body>

  <br>
  <%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
String user=(String)session.getAttribute("user");
if(user==null){
	response.sendRedirect("Index.html");
}
if(session==null){
	response.sendRedirect("Index.html");
}
%>
    <%
	String msg = (String) request.getAttribute("msg");
	if (msg != null) {
		out.println("<center><h2 style='color:White;'>" + msg + "</h2></center>");
	}
	%>
	<br>
<table  cellpadding="10" align="center">
    <form action="SignUp" method="post">
      
      <tr >
        <td>NAME:</td>
        <td><input type="text" name="name" required></td>
      </tr>
      <tr>
        <td>EMAIL: </td>
        <td><input type="text" name="email" required></td>
      </tr>
      <tr>
        <td>Phone No.: </td>
        <td><input type="text" name="phone" required></td>
      </tr>
      <tr>
        <td>DOB: </td>
        <td><input type="date" name="Dob" required></td>
      </tr>
      <tr><td>Password:</td><td><input type="password" name="password" required></td></tr>
      
       <tr>
        <th><input type="submit" class="button" name="SUBMIT" required></th>
        <th><input type="reset" class="button" name="clear"></th>
       </tr>
    </form>
</table>  
</body>
</html>