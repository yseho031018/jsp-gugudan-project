<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>구구단 입력</title>
    <style>
        body { font-family: sans-serif }
        .container {
            width: 300px;
            margin : 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>원하는 구구단을 입력하세요</h2>
        <form action="gugudan-result.jsp" method="get">
            <p>
                <label for="dan">몇 단을 출력할까요?</label>
                <input type="number" id="dan" name="dan" min="2" max="9" required>
            </p>
            <p>
                <input type="submit" value="구구단 출력하기">
            </p>
        </form>
    </div>

</body>
</html>