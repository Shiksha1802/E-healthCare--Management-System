<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>EHR table</title>
 <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  
<style>
    body {
        margin: 0;     
        font-family: Arial, sans-serif;
    }
    .display {
        height: 80vh;
        display: flex;
        justify-content: center; /* Center horizontally */
        align-items: center;    /* Center vertically */
    }
    form {
        background-color: #fff;
        padding: 50px;
        border-radius: 8px;
        border: 6px groove #10123a;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        text-align: center;
        width: 300px;
        background-image: url('image/4.jpg');
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
    }
    form::before {
        content: '';
        position: absolute;
        left: 0px;
        right: 0px;
        top: 0px;
        bottom: 0px;
        background: inherit;
        z-index: -1;
        filter: blur(10px);
    }
    label {
        font-weight: 700;
        font-size: 20px;
        display: block;
        margin-bottom: 8px;
        color: #010911;
        text-shadow: 4px 4px 2px white;
    }
    input[type="text"],
    select,
    input[type="file"] {
        width: 100%;
        padding: 8px;
        color: rgb(255, 255, 255);
        font-size: 15px;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        font-weight: 600;
        margin-bottom: 15px;
        border: 2px solid #10123a;
        background-color: #7e8b9a;
        border-radius: 10px;
    }
    input[type="submit"] {
        background-color: #173250;
        color: antiquewhite;
        font-weight: 800;
        padding: 10px 20px;
        border: none;
        border-radius: 15px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #244163;
    }
    a {
        text-decoration: none;
        color: #0b325c;
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
    String user = (String) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("Index.html");
    }
    if (session == null) {
        response.sendRedirect("Index.html");
    }
%>
   <div class="nav1">
    <a href="PatientPor.jsp"><i class="fas fa-house-user"></i> </a>
    <a href="Contact.jsp"><i class="fas fa-envelope"></i> </a>
 <a href="LogoutCtrl"><i class="fas fa-sign-out-alt"></i></a>
  </div>
  

<div class="display">
    <form action="EHRCtrl" method="post" enctype="multipart/form-data">
        <label for="pName">Patient Name:</label>
        <input type="text" name="pName" value="<%=user %>" readonly="readonly">
       <label for="doctor" >Select Doctor</label>
                <select class="form-control inp" id="doctor" name="doctor">
                    <option>Dr. Shivam Jaiswal</option>
                    <option>Dr. Shiksha Rawat</option>
                    <option>Dr. Porwal</option>
                </select>
        <!-- PDF file upload validation -->
        <label for="ufile">Upload File:</label>
        <input type="file" name="ufile" required accept=".pdf" onchange="validateFileType(this)">

        <input type="submit" value="Submit">
    </form>
</div>

<!-- Optional client-side validation script -->
<script>
    // Validate that the file is a PDF
    function validateFileType(input) {
        const file = input.files[0];
        if (file) {
            const fileType = file.type;
            if (fileType !== "application/pdf") {
                alert("Please upload a PDF file.");
                input.value = ""; // Clear the selected file
            }
        }
    }
</script>

</body>
</html>
