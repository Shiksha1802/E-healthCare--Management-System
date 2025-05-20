
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DOC LOGIN PAGE</title>
    
    
    <style>
      * {
        margin: 0;
        padding: 0;
       box-sizing: border-box;
}     

            .table1
           {
            
            margin: 200px;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 25px;
            font-weight: 800;
            color: rgb(255, 251, 251) ;
             border-width: 05px;
             border-style: solid; 
             border-color:rgb(255, 255, 255); 
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
                     
            .myclass
            {
              color: rgb(255, 255, 255);
                font-size: 25px;
                font-style: italic; 
                text-decoration: none;
                padding: 50Px;
            }
            .button 
            {
           margin: 20px,10px,20px,20px;
            padding: 0.1rem 1rem;
            border-radius: 0.25rem;
            background-color:  rgb(251, 251, 255);
            color: rgb(41, 95, 161);
            font-size: 1rem;
            }
            .button:hover{
              background-color: black;
            }
             td a{
              text-decoration: none;
              color: rgb(30, 30, 69);
             }

      
         </style>
    </head>
  
<body>

    <center>
    
        <table  class="table1" >  <form action="DoctorLoginctrl" method="post">
      <tr>  
        <td><u>UserName</u> </td>
        <td><input type="text" name="user" required></td>
      </tr>
      <tr>
        <td><u>PASSWORD:</u> </td>
        <td><input type="password" name="password" id="" required></td>
      </tr>
     
    <tr>
        <td colspan="2" ><input type="submit" class="button" value="LOGIN"></td>
    </tr>
   
    <tr>
        <td colspan="2">IF YOU ARE NEW USER THEN <a href="ContactUs.jsp">Contact</a> Admin</td>
    </tr>
  
    </form>
</table>
</center>
</body>
</html>        
