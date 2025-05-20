<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Options</title>
    <style>
     * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }
     
        body {
                      background-color: rgb(186, 216, 243);
                  }
        .con{
           font-family: Arial, sans-serif;
           display: flex;
            align-items: center;
            justify-content: center;
            height: 80vh;
           
              flex-direction: column;
              }

        .contact-button {
            text-align: center;
            color: white;
            padding: 15px 25px;
            border-radius: 8px;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;
            display: inline-block;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            margin: 10px;
            width: 220px;
            text-align: center;
        }

        .whatsapp-contact {
            background-color: #0c1d69;
        }

        .whatsapp-contact:hover {
            background-color: #0884bd;
        }

        .email-contact {
            background-color: #125270;
        }

        .email-contact:hover {
            background-color: #141a32;
        }

        
       
      .nav1{
 display: flex;
    justify-content: space-around;
    font-size: 22px;
    border: 2px solid rgb(5, 5, 5);
    padding-top: 20px;
    background-color: rgb(140, 166, 189);
    padding-bottom: 10px;
      }
       a{
        font-weight: 600;
        border: 2px solid black;
        padding: 6px;
        background-color:  #537f9a;;
        border-radius: 20px;
        text-decoration: none;
        color: white;
        font-family: cursive;

      }
       a:hover{
        background-color:  #1a4362;
        transform: scale(0.9);
      }
    </style>
</head>
<body>


<div class="card">
  <div class="nav1">
    <a href="DocPortal.jsp">  Home  </a>
    <a href="AboutUs.jsp">  About Us  </a>
    <a href="LogoutCtrl">  Log-Out   </a>
  </div>
  </div>
  
  
  <div class="con">
  
    <!-- WhatsApp Contact Button -->
    <a href="https://wa.me/PHONE_NUMBER?text=Hello%2C%20I%20would%20like%20to%20contact%20you!" class="contact-button whatsapp-contact" target="_blank">
        Contact on WhatsApp
    </a>

    <!-- Gmail Contact Button -->
    <a href="mailto:example@gmail.com?subject=Hello%20There&body=I%20would%20like%20to%20contact%20you!" class="contact-button email-contact">
        Contact via Gmail
    </a>

</div>
</body>
</html>
