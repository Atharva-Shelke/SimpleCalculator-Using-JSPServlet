<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <title>JSP Servlet Calculator</title>
    <style>
        body { font-family: sans-serif; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .calc-container { background: lightgray; padding: 20px; border-radius: 15px; box-shadow: 0 10px 25px rgba(0,0,0,0.1); width: 320px; }
        .display { background: #222; color: #0f0; font-size: 2rem; padding: 15px; text-align: right; border-radius: 8px; margin-bottom: 20px; min-height: 40px; }
        .input-group { margin-bottom: 10px; }
        input[type="number"] { width: 100%; padding: 10px; margin: 5px 0; border: 1px solid #ddd; border-radius: 5px; box-sizing: border-box; font-size: 1rem; }
        .grid-operators { display: grid; grid-template-columns: repeat(5, 1fr); gap: 10px; }
        input[type="submit"] { padding: 15px; font-size: 1.2rem; font-weight: bold; cursor: pointer; border: none; border-radius: 8px; background: #e0e0e0; transition: 0.2s; }
        input[type="submit"]:hover { background: #d0d0d0; }
        .btn-op { background: #ff9500 !important; color: white; }
    </style>
</head>
<body>
    <div class="calc-container">
        <h2 style="text-align:center; color:#333;">Calculator</h2>
        
        <div class="display">
            <%= (request.getAttribute("result") != null) ? request.getAttribute("result") : "0" %>
        </div>

        <form action="CalcServ1" method="POST">
            <div class="input-group">
                <input type="number" name="num1" placeholder="First Number" required step="any">
                <input type="number" name="num2" placeholder="Second Number" required step="any">
            </div>
            
            <div class="grid-operators">
                <input type="submit" name="btnsubmit" value="+" class="btn-op">
                <input type="submit" name="btnsubmit" value="-" class="btn-op">
                <input type="submit" name="btnsubmit" value="x" class="btn-op">
                <input type="submit" name="btnsubmit" value="/" class="btn-op">
                <input type="submit" name="btnsubmit" value="%" class="btn-op"> 
            </div>
        </form>
    </div>
</body>
</html>
