<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    
    <title>Doctor-Patient ChatBot</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(209, 232, 253);
        
        }
        .card{
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .chatbot-container {
            width: 400px;
            background: white;
            border-radius: 8px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            flex-direction: column;
        }
        .chat-header {
            background-color: #21788b;
            color: white;
            text-align: center;
            padding: 10px;
            font-size: 18px;
            font-weight: bold;
        }
        .chat-area {
            flex-grow: 1;
            padding: 10px;
            overflow-y: auto;
            background-color: aliceblue;
        }
        .chat-message {
            margin-bottom: 10px;
        }
        .chat-message.user {
            text-align: right;
            color: #333;
        }
        .chat-message.bot {
            text-align: left;
            color: #051a60;
        }
        .chat-input {
            display: flex;
            color: #051a60;
            border-top: 1px solid aliceblue;
        }
        .chat-input input {
            flex-grow: 1;
            padding: 10px;
            border: none;
            outline: none;
            font-size: 16px;
        }
        .chat-input button {
            background-color: #056f87;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            font-size: 16px;
        }
        .chat-input button:hover {
            background-color: #189ad6;
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
   <div class="nav1">
    <a href="PatientPor.jsp"><i class="fas fa-house-user"></i> </a>
    <a href="Contact.jsp"><i class="fas fa-envelope"></i> </a>
 <a href="LogoutCtrl"><i class="fas fa-sign-out-alt"></i></a>
  </div>
  <div class="card">
    <div class="chatbot-container">
        <div class="chat-header">Doctor-Patient ChatBot</div>
        <div class="chat-area" id="chat-area"></div>
        <div class="chat-input">
            <input type="text" id="chat-input" placeholder="Type your symptoms or questions...">
            <button id="send-btn">Send</button>
        </div>
    </div>
</div>
    <script>
        const chatArea = document.getElementById("chat-area");
        const chatInput = document.getElementById("chat-input");
        const sendBtn = document.getElementById("send-btn");

        // Append messages to chat area
        function appendMessage(sender, message) {
            const messageElement = document.createElement("div");
            messageElement.classList.add("chat-message", sender);
            messageElement.textContent = message;
            chatArea.appendChild(messageElement);
            chatArea.scrollTop = chatArea.scrollHeight; // Auto-scroll to the bottom
        }

        // Bot responses for doctor-patient interaction
        function getDoctorResponse(input) {
            input = input.toLowerCase();
            if (input.includes("fever")) {
                return "You might have a mild infection. Please rest, stay hydrated, and take paracetamol if necessary. If it persists, consult a physician.";
            } else if (input.includes("cough")) {
                return "It could be due to a cold or allergies. Drink warm fluids and try over-the-counter cough syrups. See a doctor if it lasts more than a week.";
            } 
            else if (input.includes("cold")) {
                return "It could be due to a cold or allergies. Drink warm fluids and try over-the-counter cough syrups. See a doctor if it lasts more than a week.";
            }else if (input.includes("headache")) {
                return "A headache can be due to stress, dehydration, or lack of sleep. Drink water, rest, and consider taking mild pain relief.";
            } else if (input.includes("stomach pain")) {
                return "This could be indigestion or gas. Avoid heavy meals and try an antacid. If the pain is severe, see a doctor.";
            } else if (input.includes("tired")) {
                return "Fatigue can be caused by overwork or lack of sleep. Rest well, eat nutritious food, and stay hydrated.";
            } else if (input.includes("thank you")) {
                return "You're welcome! Take care of your health.";
            } else if (input.includes("bye")) {
                return "Goodbye! Stay healthy and feel free to chat anytime.";
            } else {
                return "I'm sorry, I can only provide basic advice. Please consult a doctor for serious concerns.";
            }
        }

        // Handle user input
        sendBtn.addEventListener("click", () => {
            const userInput = chatInput.value.trim();
            if (userInput) {
                appendMessage("user", userInput); // Display user message
                const doctorResponse = getDoctorResponse(userInput); // Get bot response
                appendMessage("bot", doctorResponse); // Display bot response
                chatInput.value = ""; // Clear input field
            }
        });

        // Handle "Enter" key for sending messages
        chatInput.addEventListener("keydown", (event) => {
            if (event.key === "Enter") {
                sendBtn.click();
            }
        });
    </script>
</body>
</html>
