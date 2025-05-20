<%@ page import="com.dto.AppointmentInfo" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Appointment</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url("image/4.jpg");
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }
    table {
        border-collapse: collapse;
        margin: 20px auto;
        background-color: #3a769b;
        box-shadow: 8px 8px 2px black;
        color: antiquewhite;
    }
    thead {
        background-color: #030d17;
        color: white;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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
</style>
</head>

<body>
<% 
    ArrayList<AppointmentInfo> list = (ArrayList<AppointmentInfo>) request.getAttribute("list");
%>

<table>
    <thead>
        <tr>
            <th>ID</th>
            <th>Email</th>
            <th>Mobile No.</th>
            <th>UserName</th>
            <th>Appointment Date</th>
            <th>Appointment Time</th>
            <th>Date of Birth</th>
            <th>Doctor Name</th>
            <th>Gender</th>
            <th>Symptom</th>
            <th>Delete</th>
        </tr>
    </thead>
    <tbody>
        <% if (list != null && !list.isEmpty()) { %>
            <% for (AppointmentInfo ai : list) { %>   
                <tr> 
                    <td><%= ai.getId() %></td>
                    <td><%= ai.getEmail() %></td>
                    <td><%= ai.getContact() %></td>
                    <td><%= ai.getUser() %></td>
                    <td><%= ai.getAppoinDate() %></td>
                    <td><%= ai.getAppoinTime() %></td>
                    <td><%= ai.getBirth() %></td>
                    <td><%= ai.getDoctor() %></td>
                    <td><%= ai.getGender() %></td>
                    <td><%= ai.getSymptom() %></td>
                    
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="11">No appointments found.</td>
            </tr>
        <% } %>
    </tbody>
</table>

</body>
</html>
