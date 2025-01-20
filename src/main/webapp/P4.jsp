<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--入会申請-->

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TMC カーシェア</title>
    <link rel="stylesheet" href="css/request.css">    
</head>
<body>
<header>
    <div class="logo-title">
        <img src="img/rog.png" alt="TMC Logo">
        <h1>TMC カーシェア</h1>
    </div>
    <a href="#" class="login-btn" onclick="location.href='P29.html'">予約・ログイン ▶</a> <!-- 予約・ログインボタン -->
</header>

<div class="container">
    <h2>入会申請</h2>
    <div class="steps">
        <div class="step yellow">
            <div class="step-icon">📝</div>
            <div class="step-label">詳細・規約のご確認</div>
        </div>
        <div class="step">
            <div class="step-icon">🖊️</div>
            <div class="step-label">基本情報のご入力</div>
        </div>
        <div class="step">
            <div class="step-icon">🔍</div>
            <div class="step-label">ご入力基本情報のご確認</div>
        </div>
        <div class="step">
            <div class="step-icon">💳</div>
            <div class="step-label">クレジットカード情報</div>
        </div>
        <div class="step">
            <div class="step-icon">✅</div>
            <div class="step-label">申し込み完了</div>
        </div>
    </div>

    <div class="info">
        <p>利用開始できるタイミング</p>
        <ul>
            <li>・最短15分で入会完了いたします。</li>
            <li>※お申込み内容に不備や確認がある場合、またはお申し込みが混み合っている場合、入会にお時間を頂く場合がございます。</li>
        </ul>
    </div>

    <div class="btn-container">
        <a href="P5.jsp" class="btn">確認しました</a>
    </div>
</div>

</body>
</html>
