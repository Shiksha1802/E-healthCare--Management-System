<%@page import="com.dto.UserInfo"%>
<%@page import="com.dto.Doctor"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users Profile</title>
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
   
    <style>
        /* Set a background color for the whole page */
        *{
            box-sizing: border-box;
            padding: 0px;
             margin: 0px;        
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #c7e2ff; /* Light blue background */
            margin: 0;
           
        }

        /* Style for the table container */
        .table-container {
            display: flex;
            width: 100%;
            gap: 20px;
            justify-content: center;
        }

        /* Style for each table wrapper */
        .table-wrapper {
            width: 45%;
            padding: 10px;
            background-color: #f0f8ff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .table-wrapper h1 {
            text-align: center;
            color: #004080; /* Darker blue for title */
            font-size: 1.5em;
            margin-bottom: 10px;
        }
       
        table {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid whitesmoke;
        }

        th {
            background-color: #104767; /* Dark blue */
            color: #ffffff;
            border: 2px solid whitesmoke;
            padding: 12px;
            text-align: center;
            font-weight: bold;
        }
       
         
         tr{
            background-color: #b3d9ff;
         }

        td {
            border: 1px solid #b3d9ff;
            padding: 10px;
            color: black;
        }
      
        tr:nth-child(even) {
            background-color: #e6f2ff; 
        }
        
        
        .nav1{
    display: flex;
    justify-content: space-around;
    font-size: 22px;
    padding: 10px;
      }
       a{
        font-weight: 600;
        border: 2px solid black;
        padding: 6px;
        background-color: rgb(250, 250, 240);
        border-radius: 20px;
        text-decoration: none;
        color: black;
        font-family: cursive;

      }
       a:hover{
        background-color:window;
        transform: scale(0.9);
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
<%
ArrayList<Doctor> dList=(ArrayList)request.getAttribute("dList");
            	
ArrayList<UserInfo> uList=(ArrayList)request.getAttribute("uList");
            		
%>

     <div class="nav1">
    <a href="DocPortal.jsp"><i class="fas fa-house-user"></i> </a>
    <a href="Contact.jsp"><i class="fas fa-envelope"></i> </a>
 <a href="LogoutCtrl"><i class="fas fa-sign-out-alt"></i></a>
  </div>
 
    
    <div class="table-container">
       
        <div class="table-wrapper">
           <h1> Patient Profile</h1>
            <table>
                <thead>
                    <tr>
                        <th>UserName</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Contact No.</th>
                        <th>Delete</th>
                    </tr>
                </thead>
               <%for(UserInfo u: uList){
            	   %>
            	   <tr>
            	   <td><%=u.getUser() %></td>
            	   <td><%=u.getuName()%></td>
            	   <td><%=u.getuEmail()%></td>
            	   <td><%=u.getuMobile() %></td>
            	   <td><a href="DeletePatientCtrl?user=<%=u.getUser()%>">delete</a></td>
            	   </tr>
             <%  }%> 
            </table>
        </div>

      
       
        <div class="table-wrapper">
           <h1> Doctor Profile</h1>
            <table>
                <thead>
                    <tr>
                    <th>UserName</th>
                        <th>Name</th>
                        <th>Mobile No.</th>
                        <th>Email</th>
                        <th>Designation</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <%for(Doctor d: dList){
            	   %>
            	   <tr>
            	   <td><%=d.getUser() %></td>
            	   <td><%=d.getdName() %></td>
            	   <td><%=d.getdMobile() %></td>
            	   <td><%=d.getdEmail() %></td>
            	   <td><%=d.getdDesig() %></td>
            	   <td><a href="DeleteDoctorCtrl?user=<%=d.getUser()%>">delete</a></td>
            	   </tr>
             <%  }%> 
            </table>
</div>

</body>
</html>
