
<!DOCTYPE html>
<%@page import="com.dto.UserInfo"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient profile</title>
</head>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  
    <style>
    .nav1{
    display: flex;
    justify-content: space-around;
    }
    .nav1 a{
     font-size: 20px;
     color:black;
     border: 2px solid black;
     padding: 8px;
     background-color: white;
     border-radius: 15px; 
}
   
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }
    body {
        background-image: url("image/3.jpg");  
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
    .btn {
        background-color: rgb(255, 255, 255);
        padding: 5px 15px;
        border-radius: 15px 15px 15px 15px;
        cursor: pointer;
        border: 5px solid rgb(242, 236, 236);
        font-family: cursive;
        font-weight: 600;
        text-transform: uppercase;
        
    }
    td{
        font-size: 25px;
        font-weight: 700;
        font-family: cursive;
       
    }
    input{
        margin-left: 30px;
        font-family: cursive;
        font-weight: 400;
        
    }
    .table {
        line-height: 40px;
        border: 10px groove white;
        padding: 10px;
    }
    .cen {
        margin: 150px auto;
        display: flex;
        justify-content: center;
    }
    .button-cell {
        text-align: center;
    }

</style>
<body>
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
	UserInfo ad = (UserInfo) request.getAttribute("LIST");
	%>
	   <div class="nav1">
    <a href="PatientPor.jsp"><i class="fas fa-house-user"></i> </a>
    <a href="Contact.jsp"><i class="fas fa-envelope"></i> </a>
 <a href="LogoutCtrl"><i class="fas fa-sign-out-alt"></i></a>
  </div>
  
  
	<form action="PatientProfileCtrl" method="post"><div class="cen">
		<table class="table">
			<tr>
				<td>Name</td>
				<td><input type="text" value="<%=ad.getuName()%>" name="uName"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" value="<%=ad.getuEmail()%>"
					name="uEmail"></td>
			</tr>
			<tr>
				<td>Mobile No.</td>
				<td><input type="text" value="<%=ad.getuMobile()%>"
					name="uMobile"></td>
			</tr>
			<tr>
				<td>UserName</td>
				<td><input type="text" value="<%=ad.getUser()%>" name="user" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="text" value="<%=ad.getPassword()%>"
					name="password"></td>
			</tr>
			<tr >
				<td colspan="2" class="button-cell" ><input class="btn" type="submit" value="update"></td>
			</tr>
		</table></div>
	</form>
</body>
</html>