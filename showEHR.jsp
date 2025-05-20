<%@page import="java.net.URLEncoder"%>
<%@page import="com.dto.EHRInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  
<meta charset="ISO-8859-1">
<title>View EHR</title>
<style>
    body {
       
        background-image: url("image/4.jpg");
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        
        margin: 0;
        padding: 0;
        
    }
    .display{
     display: flex;
        justify-content: center;
        align-items: center;
         font-family: Arial, sans-serif;
       
        }

    table {
        width: 80%;
        border-collapse: collapse;
        margin: 20px auto;
        margin-top:40px;
        background-color: #3a769b;
        box-shadow: 8px 8px 2px black;
        color: antiquewhite;
    }

    thead {
        background-color: #030d17;
        color: white;
    }

    th, td {
        padding: 12px 15px;
        text-align: center;
        color: antiquewhite;
        border: 1px solid #ddd;
    }

    

    tr:hover {
        background-color: #464e5a;
    }

    th {
        text-transform: uppercase;
        letter-spacing: 0.1em;
    }

    a {
        color: antiquewhite;
        text-decoration: none;
        font-weight: bold;
    }
  <!-------------------------navbar css------------------>
        .card{
        display: flex;
        }
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
ArrayList<EHRInfo> list = (ArrayList<EHRInfo>) request.getAttribute("LIST");
%>

  <div class="nav1">
    <a href="PatientPor.jsp"><i class="fas fa-house-user"></i> </a>
    <a href="Contact.jsp"><i class="fas fa-envelope"></i> </a>
 <a href="LogoutCtrl"><i class="fas fa-sign-out-alt"></i></a>
  </div>

  <div class="display">
<table >
    <thead>
        <tr>
            <th>S.No.</th>
            <th>Doctor Name</th>
            <th>Patient Name</th>
            <th>File</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <%
        for(EHRInfo ei : list) {
        %>
            <tr>
                <td><%= ei.getSno() %></td>
                <td><%= ei.getdName() %></td>
                <td><%= ei.getpName() %></td>
                <td>
                    <a href="DownloadFile?filePath=<%= URLEncoder.encode(ei.getFilePath().replace("\\", "/"), "UTF-8") %>">Download</a>
                </td>
                <td><a href="DeleteEHRCtrl?id=<%=ei.getSno()%>">Delete</a></td>
            </tr>
        <%
        }
        %>
    </tbody>
</table>
</div>
</body>
</html>
