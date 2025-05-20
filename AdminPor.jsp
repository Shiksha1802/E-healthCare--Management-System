<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Portal</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
     <link href=”bootstrap/css/bootstrap.min.css” rel=”stylesheet” type=”text/css” />
  <style>
.cl1 {
	height: 450px;
	border: 2px solid black;
	background-image: url(image/full.jpg);
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
}

.cl2 {
	background-color: rgb(11, 66, 105);
	height: 150px;
}
body{
background-color: rgb(11, 66, 105);
}

nav {
	background-color: rgb(11, 66, 105);
	color: rgb(229, 220, 208);
	font-size: 30px;
	font-weight: 500;
	font-style: italic;
	font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
		'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
}

nav a {
	color: antiquewhite;
  border: 2px solid antiquewhite;
  border-radius: 40px;
  font-size: 20px;
  background-color:rgba(17, 145, 237, 0.488) ;
}

nav a:hover {
	transform: scale(1.1);
  color: antiquewhite;
  border: 2px solid antiquewhite;
  border-radius: 40px;
	box-shadow: 2px 2px 2px 2px skyblue;
}

nav li {
	padding: 20px;
}
   .dropdown-menu {
            background-color: lightblue; 
            border:2px solid white;
           
        }
        .footer{
      display: flex;
 
}
.ft{
font-size: 20px;
width:300px;
color:rgba(255, 255, 255, 0.933);
}

.icon{
font-size: 80px;
margin-left: 90px;
color: white;
}
.ft li{
    font-size: 20px;
    list-style-type: none ;
    text-align: start;
   line-height: 30px;
   text-transform: capitalize;

}
.ft ul{
    border-left: 3px solid rgb(255, 255, 255);
   
}
.ft i{
    color: rgb(248, 248, 248);
   
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
	<div class="nav1">
		<nav class="navbar navbar-expand-lg nav2">
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
				
					<li class="nav-item"><a class="nav-link" href="showAppointmentAdmin">Appointment</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="DoctorReg.jsp">Register
							Doctor</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> Profile </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="UserProfileCtrl">User Profile</a> <a
								class="dropdown-item" href="AdminProfileCtrl?user=<%=user%>">Admin Profile</a>
							
						</div></li>
				</ul>
				<ul class="navbar-nav mr-0">
					<li class="nav-item"><div>
							<a href="LogoutCtrl" class="nav-link">Log-out</a>
						</div></li>
				</ul>
				</div>
		</nav>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12 cl1">
			</div>

		</div>
		<div class="row ml-5 mt-2 ">
            <div class="col footer">
            
          <div class="icon"> 
            <i class="fas fa-user-md" ></i>
          </div>
           
            
             </div>
                <div class="ft"> 
                 <ul>PRIVACY:
                     <li>
                         terms of Use
             
                     </li>
                     <li>
                         Privacy Policy
                     </li>
                     <li>
                         Cookie
                     </li>
                 </ul>
                </div>
             
                <div  class="ft">
                 <ul>Services:
                     <li>
                     Appointment
                     </li>
                     <li>
                      Check-Up
                     </li>
                     <li>
                       Records
                     </li>
                 </ul>
                </div>
             
                <div  class="ft"> <ul>Information:
                 <li>
                Places and Prices
                 </li>
                 <li>
                  Jobs
                 </li>
                 <li>
                   Sale Your Product
                 </li>
             </ul>
             </div>
                <div  class="ft"> 
                <ul>Social_meadia: 
                <li> <a href="https://www.facebook.com" target="_blank">
                     <i class="fab fa-facebook-f">&nbsp;Facebook</i>
                 </a>
             </li> <li>    <a href="https://www.twitter.com" target="_blank">
                     <i class="fab fa-twitter">&nbsp;Twitter</i>
                 </a></li>
                 <li>
                 <a href="https://www.instagram.com" target="_blank">
                     <i class="fab fa-instagram">&nbsp;Instagram</i>
                 </a>
             </li>
                </ul>
             </div>
             </div>
	</div>
	 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>