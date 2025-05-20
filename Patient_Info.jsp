<%@page import="com.dto.AppointmentInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Patient Info</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            background-image: url(image/full.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center;
        }
        h2 {
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 30px;
            font-weight: 200;
            text-decoration: underline;
            text-transform: uppercase;
            color: aliceblue;
            margin: 5px;
        }
        .cen {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }
        .table {
            border: 4px groove black;
            padding: 20px;
            backdrop-filter: blur(15px);
        }
        td {
            line-height: 40px;
            font-size: 25px;
            font-weight: 700;
            font-family: cursive;
            color: white;
        }
        input {
            margin-left: 30px;
            line-height: 20px;
            color: aliceblue;
            background-color: rgba(0, 0, 0, 0.259);
            text-align: center;
        }
    </style>
</head>
<body>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

String user = (String) session.getAttribute("user");
if (user == null || session == null) {
    response.sendRedirect("Index.html");
}

// Retrieve the AppointmentInfo object
AppointmentInfo ad = (AppointmentInfo) request.getAttribute("LIST");

// Check if the object is null and handle it
if (ad.getId() == 0) {
%>
    <script>
        alert("No appointment has been taken. Redirecting to the home page.");
        window.location.href = "PatientPor.jsp"; // Update this to your home page URL
    </script>
<%
} else {
%>
    <form action="#" method="post">
        <h2>Patient Information</h2>
        <div class="cen">
            <table class="table">
                <tr>
                    <td>Id</td>
                    <td><input type="text" value="<%= ad.getId() %>" readonly="readonly" name="id"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" value="<%= ad.getUser() %>" name="name"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" value="<%= ad.getEmail() %>" name="email"></td>
                </tr>
                <tr>
                    <td>Mobile No.</td>
                    <td><input type="text" value="<%= ad.getContact() %>" name="contact"></td>
                </tr>
               
                <tr>
                    <td>Appointment Date</td>
                    <td><input type="text" value="<%= ad.getAppoinDate() %>" name="appoinDate"></td>
                </tr>
                <tr>
                    <td>Appointment Time</td>
                    <td><input type="text" value="<%= ad.getAppoinTime() %>" name="appoinTime"></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td><input type="text" value="<%= ad.getBirth() %>" name="birth"></td>
                </tr>
                <tr>
                    <td>Doctor Name</td>
                    <td><input type="text" value="<%= ad.getDoctor() %>" name="doctor"></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td><input type="text" value="<%= ad.getGender() %>" name="gender"></td>
                </tr>
                <tr>
                    <td>Symptom</td>
                    <td><input type="text" value="<%= ad.getSymptom() %>" name="symptom"></td>
                </tr>
                <tr>
                	<td>State</td>
                	<td><input type="text" value="<%=ad.getState() %>" name="state" readonly="readonly"></td>
                </tr>
            </table>
        </div>
    </form>
<%
}
%>
</body>
</html>
