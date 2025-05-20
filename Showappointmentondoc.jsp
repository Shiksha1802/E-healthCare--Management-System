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
         background-image:url("image/4.jpg");
         background-size:250%;
        background-repeat:no-repeat;
         background-position:center;
         margin: 0;
        padding: 0;
        display: flex;
        justify-content:flex-start;
        align-items: center;
        width: 300vh;
    }
    table {
  
        border-collapse: collapse;
        margin-top: 20px;
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
        text-align: center;
        font-family: cursive;
    }
    tr:hover {
        background-color: #464e5a;
    }
    th {
        text-transform: uppercase;
        letter-spacing: 0.1em;
    }
     button {

        color: antiquewhite;
        text-decoration: none;
        font-weight: bold;
        background-color: transparent;
        border: none;
        cursor: pointer;
    }
    .btn{
        
        display: flex;
        color: antiquewhite;
        text-decoration: none;
        font-weight: bold;
        background-color: transparent;
        border: none;
        cursor: pointer;
       
 
    }
    input{
      text-align: center;
        font-family: cursive;
        background-color: aliceblue;
    }
   
    .approve-btn {
        display: flex;
        color: antiquewhite;
        text-decoration: none;
        font-weight: bold;
        background-color: transparent;
        border: none;
        cursor: pointer;
    }
    .reject-btn {
        display: flex;
        color: antiquewhite;
        text-decoration: none;
        font-weight: bold;
        background-color: transparent;
        border: none;
        cursor: pointer;
    }
    .submit{
     text-transform: capitalize;
     }
</style>
</head>

<body>
<% 
    ArrayList<AppointmentInfo> list = (ArrayList<AppointmentInfo>) request.getAttribute("list");
%>
<form action="approveAppointment" >
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
            <th>State</th>
            <th>Submit</th>
            
        </tr>
    </thead>
    <tbody>
        <% if (list != null && !list.isEmpty()) { %>
            <% for (AppointmentInfo ai : list) { %>   
            
                <tr> 
                    <td><input type="text" value="<%= ai.getId() %>" name="id" readonly="readonly"></td>
                    
                    <td><input type="text" value="<%= ai.getEmail() %>" name="email"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getContact() %>" name="contact"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getUser() %>" name="user" readonly="readonly"></td>
               
                    <td><input type="text" value="<%= ai.getAppoinDate() %>" name="appoinDate"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getAppoinTime() %>" name="appoinTime"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getBirth() %>" name="birth"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getDoctor() %>" name="doctor"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getGender() %>" name="gender"readonly="readonly"></td>
                    <td><input type="text" value="<%= ai.getSymptom() %>" name="symptom"readonly="readonly"></td>
                    <td><a href="deleteAppointment?id=<%=ai.getId()%>" class="btn">Delete</a>
                    </td><td> <select name="state">
                    <option>Approve</option>
                     <option>Reject</option>
                        </select>  
                                        
                    </td>
                    <td><input type="submit" class="submit" value="submit"></td>
                  
                </tr>
            <% } %>
        <% } else { %>
            <tr>
                <td colspan="13">No appointments found.</td>
            </tr>
        <% } %>
    </tbody>
</table>
</form>
</body>
</html>
