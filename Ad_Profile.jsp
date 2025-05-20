<%@page import="com.dto.AdminInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin profile</title>
</head>
 <style>
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
            margin: 250px auto;
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
AdminInfo ad=(AdminInfo)request.getAttribute("LIST");

%>
 <form action="AdminProfileCtrl" method="post">
        <div class="cen">
            <table class="table">
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="<%=ad.getaName() %>" name="aName" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="text" value="<%=ad.getPassword() %>" name="password"></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-cell"><button class="btn">Update</button></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>