<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Loan Type</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background: linear-gradient(135deg, #e3f2fd, #fce4ec);
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
    select, .btn {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border-radius: 6px;
        border: 1px solid #ccc;
    }
    .btn {
        background-color: #64b5f6;
        color: white;
        cursor: pointer;
        transition: 0.3s;
    }
    .btn:hover {
        background-color: #42a5f5;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Select Loan Type</h2>
        <form action="loanconfirmation.jsp" method="post">
            <select name="loanType">
                <option value="Home Loan">Home Loan</option>
                <option value="Car Loan">Car Loan</option>
                <option value="Personal Loan">Personal Loan</option>
            </select>
            <input type="submit" class="btn" value="Proceed">
        </form>
    </div>
</body>
</html>
