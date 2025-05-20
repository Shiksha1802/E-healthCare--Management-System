<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Appointment Form</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
body{
background-color:#76b5c5;
}	

.inp{
background-color:#abdbe3;
}

.text1{
font-style:italic;
font-family: sans-serif;
font-size: 25px;
border:2px solid black;
line-height: 20px;
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
<div class="text1">
    <div class="container  mt-2">
        <h2 class="text-center mb-3"><u> Appointment Form </u></h2>

        <form action="AppointmentCtrl" method="post">
            <!-- Patient Name -->
           
            <div class="form-group">
                <label for="patientName">Patient Name</label>
              <input type="text" name="user" value="<%=user%>" class="form-control inp" id="userName"  readonly="readonly">
            </div>

            <!-- Gender -->
            <div class="form-group">
                <label for="gender">Gender</label>
                <select class="form-control inp" id="gender" name="gender">
                    <option>Male</option>
                    <option>Female</option>
                    <option>Other</option>
                </select>
            </div>

            <!-- Date of Birth -->
            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <input type="date" name="birth"class="form-control inp" id="dob" required>
            </div>

            <!-- Contact Number -->
            <div class="form-group">
                <label for="contact">Contact Number</label>
                <input type="tel" name="contact" required pattern="^\d{10}$" class="form-control inp" id="contact" placeholder="Enter your contact number" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" name="email" class="form-control inp" id="email" placeholder="Enter your email" required>
            </div>
           
            <div class="form-group">
                <label for="appointmentDate">Preferred Appointment Date</label>
                <input type="date" name="appoinDate" class="form-control inp" id="appointmentDate" required>
            </div>
             <!-- Appointment Time -->
            
             <div class="form-group">
                <label for="time">Select Time</label>
                <select class="form-control inp" id="time" name="appoinTime">
                   <option>10:00am</option>
                   <option>11:00am</option>
                   <option>12:00pm</option>
                   <option>1:00pm</option>
                   <option>2:00pm</option>
                   <option>3:00pm</option>
                   <option>4:00pm</option>
                   <option>5:00pm</option>
                   <option>6:00pm</option>
                   <option>7:00pm</option>
                </select>
            </div>
            <!-- Doctor Selection -->
            <div class="form-group">
                <label for="doctor">Select Doctor</label>
                <select class="form-control inp" id="doctor" name="doctor">
                    <option>Dr. Shivam Jaiswal</option>
                    <option>Dr. Shiksha Rawat</option>
                    <option>Dr. Porwal</option>
                </select>
            </div>

            <!-- Symptoms/Message -->
            <div class="form-group">
                <label for="message">Describe Your Symptoms</label>
                <textarea class="form-control inp"  name="symptom" id="message" rows="3" placeholder="Describe any symptoms or medical concerns"></textarea>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn btn-primary btn-block">Submit Appointment Request</button>
        </form>
    </div>
</div>


	<script>
		function validateForm() {
			const uName = document.getElementById('uName').value.trim();
			
			const uMobile = document.getElementById('uMobile').value.trim();
			const uEmail = document.getElementById('uEmail').value.trim();
		
			 
		    if (uName === "" || !/[a-zA-Z]/.test(uName)) {
		        alert('Name must contain at least one letter and cannot be blank.');
		        return false;
		    }
		   
			if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(uEmail)) {
				alert('Please enter a valid email address.');
				return false;
			}
			return true;  
		}
	</script>
    <!-- Bootstrap JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
