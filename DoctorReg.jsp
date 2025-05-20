
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Pat LOGIN PAGE</title>


<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

.table1 {
	margin:150px;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',sans-serif;
	font-size: 25px;
	font-weight: 800;
	color: rgb(255, 251, 251);
	border-width: 05px;
	border-style: solid;
	border-color: rgb(255, 255, 255);
	border-radius: 60px;
	padding: 40px;
	line-height: 40px;
	background-image: url(image/full.jpg);
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}

.table1::before {
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: inherit;
	filter: blur(10px); /* Adjust the blur radius */
	z-index: -1; /* Puts the blur behind the content */
}

.myclass {
	color: rgb(255, 255, 255);
	font-size: 25px;
	font-style: italic;
	text-decoration: none;
	padding: 50Px;
}

.button {
	 background-color: rgb(255, 255, 255);
        padding: 5px 15px;
        border-radius: 15px 15px 15px 15px;
        cursor: pointer;
        border: 5px solid rgb(242, 236, 236);
        font-family: cursive;
        font-weight: 600;
        text-transform: uppercase;
	
}
  .button-cell {
        text-align: center;
    }
.button:hover {
	background-color:bisque;
}

td a {
	text-decoration: none;
	color: rgb(30, 30, 69);
}
</style>
</head>

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
	<center>
		<table class="table1">
			<form action="DocRegctrl" method="post">
				<tr>
					<td><u>Doctor Name</u></td>
					<td><input type="text" name="dName" required></td>
				</tr>
				<tr>
					<td><u>Doctor Mobile No.</u></td>
					<td><input type="text" name="dMobile" id="" required pattern="^\d{10}$"></td>
				</tr>
				<tr>
					<td><u>Email Address:</u></td>
					<td><input type="text" name="dEmail" id="" required></td>
				</tr>
				<tr>
					<td><u>Designation:</u></td>
					<td><input type="text" name="dDesig" id="" required pattern="^[a-zA-Z]+$"></td>
				</tr>
				<tr>
					<td><u>UserName:</u></td>
					<td><input type="text" name="user" id="" required></td>
				</tr>
				<tr>
					<td><u>PASSWORD:</u></td>
					<td><input type="password" name="password" id="" required></td>
				</tr>
				
				<tr>
					<td colspan="2" class="button-cell"><input type="submit" class="button"value="register"></td>
				</tr>
			</form>
		</table>
	</center>
</body>
</html>
