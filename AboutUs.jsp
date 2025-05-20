<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<style>
    body { 
      background-color: aliceblue;
    }
    .h{
    text-decoration:underline;
    display:flex;
    justify-content:center;
  margin:0;  
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        font-weight: 700;
        font-style: italic;
    }
    .team {
        display: grid;
        grid-template-rows: 80px 170px 100px 170px 100px;
        grid-template-columns: 350px 400px;
        grid-template-areas: 
          
            "ban ban ban ban"
            "one one two two"
            "one one two two"
            "three three four four"
            "three three four four";
        gap: 2px;
    }
    .nav1 {
    
        grid-area: nav;
        display: flex;
        align-items: center;
       
        justify-content: space-evenly;
    }
    a{
        text-decoration: none;
        color: white;
        font-size: 20px;
        font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        font-weight: 700;
        background-color: #b5d9f9;
        font-style: italic;
        border: 2px solid white;
        border-radius: 10px;
        padding: 5px;
    }
    .member1, .member2, .member3, .member4 {
        border: 2px solid rgb(177, 239, 253);
        padding: 15px;
        border-radius: 30px;
        color: #144185;
    }
    p{
        font-size: 20px;
        font-family: cursive;
        font-weight: 300;
        color: #132d55;
    }
    .member1 { grid-area: one; }
    .member2 { grid-area: two; }
    .member3 { grid-area: three; }
    .member4 { grid-area: four; }

    .img1 {
        display: flex;
        align-items: center;
        margin-bottom: 10px;
    }
    img {
        height: 150px;
        width: 150px;
        border-radius: 30px;
        border: 5px solid rgb(177, 239, 253);
        margin-right: 15px;
    }
    .name {
        font-size: 20px;
        font-weight: bold;
    }
    .ban1 {

        padding: 15px;
        grid-area: ban;
        text-align: center;
    }
</style>
<body>
   <h1 class="h">About Us</h1>
   
 <div class="team">
       <!-- <div class="nav1">
            <a href="Index.html">Home</a>
            <a href="AboutUS.jsp">About Us</a>
            <a href="ContactUs.jsp">Contact Us</a>
        </div>
         -->    
      
        <div class="ban1">
          <marquee scrollamount="15" loop="">   <p>Welcome to our team! We are a group of passionate individuals working together to achieve our goals. Get to know us below!</p>
          </marquee>  </div>

        <div class="member1">
            <div class="img1">
                <img src="image/khushi.jpg" alt="Shiksha">
                <span class="name">Shiksha Rawat</span>
            </div>
            <p>Shiksha is the visionary behind the project, ensuring that everything runs smoothly and efficiently.</p>
        </div>

        <div class="member2">
            <div class="img1">
                <img src="image/Shivam.jpg" alt="Shivam">
                <span class="name">Shivam Jaiswal</span>
            </div>
            <p>Shivam brings our ideas to life with his design skills, ensuring our projects are visually stunning.</p>
        </div>

        <div class="member3">
            <div class="img1">
                <img src="image/Shabbir.jpg" alt="">
                <span class="name">Shabbir Pithewan</span>
            </div>
            <p>Shabbir is responsible for the technical side, coding and building the infrastructure for our platform.</p>
        </div>

        <div class="member4">
            <div class="img1">
                <img src="image/Porwal.jpg" alt="">
                <span class="name">Shivam Porwal</span>
            </div>
            <p>Shivam Porwal handles our marketing efforts, ensuring our message reaches the right audience.</p>
        </div>
    </div>
</body>
</html>
    