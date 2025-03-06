<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Balance Information</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(135deg, #f3e5f5, #e1f5fe);
        margin: 0;
    }
    .container {
        background: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 350px;
    }
    h4 {
        color: #333;
        font-size: 20px;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Your Account Balance</h2>
        <h4>
            <%
            Object balance = session.getAttribute("bal");
            out.print("Balance = " + (balance != null ? balance : "Not Available"));
            %>
        </h4>
    </div>
</body>
</html>
