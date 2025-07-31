<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>에러 발생</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .error-container {
            margin-top: 5%;
            text-align: center;
        }
        .error-image {
            max-width: 250px;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="container error-container">
    <h1 class="display-5 text-danger">문제가 발생했어요 😢</h1>
    <img src="/img/error.png" alt="에러 이미지" class="error-image" />

    <p class="lead text-muted" >${errorMessage}</p>
    <a href="/" class="btn btn-primary mt-3">홈으로 돌아가기</a>
</div>
</body>
</html>
