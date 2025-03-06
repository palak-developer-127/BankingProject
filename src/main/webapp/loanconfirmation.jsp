<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Loan Confirmation</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(135deg, #c5cae9, #b2dfdb);
        margin: 0;
    }
    .container {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 400px;
    }
    h2 {
        color: #2c3e50;
    }
    h3 {
        color: #333;
    }
    p {
        color: #555;
        font-size: 18px;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Loan Confirmation</h2>

        <%
        // Debugging: Print session values
        System.out.println("Debug: accNo = " + session.getAttribute("accno"));
        
        // Fetch user details from session
        Object accNoObj = session.getAttribute("accno");

        String accNo = (accNoObj != null) ? accNoObj.toString() : "Not Available";

        String name = (String) session.getAttribute("cname");
        String email = (String) session.getAttribute("email");

        Object phoneObj = session.getAttribute("phone");
        String phone = (phoneObj != null) ? phoneObj.toString() : "Not Available";

        String loanType = request.getParameter("loanType");

        // Handle null values
        name = (name != null) ? name : "Not Available";
        email = (email != null) ? email : "Not Available";
        loanType = (loanType != null) ? loanType : "Not Specified";
        %>

        <h3>Loan Type: <%= loanType %></h3>
        <p><strong>Account No:</strong> <%= accNo %></p>
        <p><strong>Name:</strong> <%= name %></p>
        <p><strong>Email:</strong> <%= email %></p>
        <p><strong>Phone:</strong> <%= phone %></p>

        <h3 style="color: green;">Thank you for applying for a loan!</h3>
         <h3 style="color: green;">Contact For Loan Department !</h3>
    </div>
</body>
</html>
