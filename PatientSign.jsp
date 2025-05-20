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
	margin: 200px;
	font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
		sans-serif;
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
	margin: 20px, 10px, 20px, 20px;
	padding: 0.1rem 1rem;
	border-radius: 0.25rem;
	background-color: rgb(251, 251, 255);
	color: rgb(41, 95, 161);
	font-size: 1rem;
}

.button:hover {
	background-color: black;
}

td a {
	text-decoration: none;
	color: rgb(30, 30, 69);
}
</style>
</head>

<body>

	<center>
		<table class="table1">
			<form action="PatientRegctrl" method="post" onsubmit="return validateForm()">
				<tr>
					<td><u>Patient Name</u></td>
<td>
    <input type="text" name="uName" id="uName" required pattern=".*[a-zA-Z]+.*" placeholder="Name must include letters">
</td>
                   

				</tr>
				<tr>
					<td><u>Patient Mobile No.</u></td>
					<td><input type="text" name="uMobile" id="uMobile" required pattern="^\d{10}$" placeholder="Enter 10 digit number"></td>
				</tr>
				<tr>
					<td><u>Email Address:</u></td>
					<td><input type="email" name="uEmail" id="uEmail" required placeholder="Enter a valid email"></td>
				</tr>
				<tr>
					<td><u>Username:</u></td>
					<td><input type="text" name="user" id="user" required pattern="^\S+$" required placeholder="No spaces allowed"></td>
				</tr>
				<tr>
					<td><u>Password:</u></td>
					<td><input type="password" name="password" id="password" required placeholder="No spaces allowed"></td>
				</tr>
				
				<tr>
					<td colspan="2"><input type="submit" class="button" value="Register"></td>
				</tr>
			</form>
		</table>
	</center>

	<script>
		function validateForm() {
			const uName = document.getElementById('uName').value.trim();
			const uMobile = document.getElementById('uMobile').value.trim();
			const uEmail = document.getElementById('uEmail').value.trim();
			const username = document.getElementById('user').value.trim();
			const password = document.getElementById('password').value.trim();
			  // Validate name
		    if (uName === "" || !/[a-zA-Z]/.test(uName)) {
		        alert('Name must contain at least one letter and cannot be blank.');
		        return false;
		    }

			
			if (!/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(uEmail)) {
				alert('Please enter a valid email address.');
				return false;
			}

			if (/\s/.test(username)) {
				alert('Username cannot contain spaces.');
				return false;
			}

			
			if (!/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d]{8,}$/.test(password)) {
			    alert('Password must be at least 8 characters long and include a number, an uppercase, and a lowercase letter.');
			    return false;
			}

			return true;  
		}
	</script>
</body>

</html>
