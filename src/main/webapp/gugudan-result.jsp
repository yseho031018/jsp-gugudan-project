<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 구구단 로직
    int dan = 0;
    boolean isSuccess = true;
    String errorMessage = "";

    String dan_str = request.getParameter("dan");

    try{
        if(dan_str != null && !dan_str.isEmpty()) {
            dan = Integer.parseInt(dan_str);
            if(dan < 2 || dan > 9 ) {
                isSuccess = false;
                errorMessage = "2단에서 9단까지만 입력할 수 있습니다.";
            }
        } else {
            isSuccess = false;
            errorMessage = "값을 입력해주세요.";
        }
    } catch(NumberFormatException e) {
        isSuccess = false;
        errorMessage = "숫자만 입력할 수 있습니다.";
    }
%>
<!DOCTYPE html>
<!-- 화면 출력 -->
<html>
<head>
    <title>구구단 결과</title>
    <style>
        body{
            font-family: sans-serif;
            text-align: center;
        }
        .result-container {
            width: 300px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        .error { color: red; font-weight: bold; }
    </style>
</head>
<body>
    <div class="result-container">
        <% if (isSuccess) { %>

            <h2><%= dan %>단 결과</h2>
            <% for (int i = 1; i <= 9; i++) { %>
                <%= dan %> x <%= i %> = <%= dan * i %><br>
            <% } %>
        <% } else { %>
            <p class="error"><%= errorMessage %></p>
        <% } %>

        <hr>
        <a href="index.jsp">다른 단 계산하기</a>
    </div>
</body>
</html>
