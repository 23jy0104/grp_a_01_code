<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link href="css/error.css" rel="stylesheet" type="text/css">
    <title>TMC カーシェア</title>
</head>
<body>

<div class="maincontents">
    <img src="../../img/rog.png" alt="TMC Logo"/>
    <button class="top-right-button">予約・ログイン　▶</button>
    <h1>TMC カーシェア</h1>
    <h2>パスワード再発行(入力)</h2>
    <div class="login-container">
    <span class="error-message">※必須項目を入力してください。</span>
        <form>
            <table>
                <tr>
                    <td><label for="email">ご登録メールアドレス【必須】</label></td>
                    <td>
                        <input type="email" id="email" name="email" required></br>
                        <span>※半角数字</span>
                    </td>
                </tr>
                <tr>
                    <td><label for="name">お名前【必須】</label></td>
                    <td>
                        <input type="text" id="name" name="name" required></br>
                        <span>例）山田　太郎</span>
                    </td>
                </tr>
                <tr>
                    <td><label for="birthday">生年月日【必須】</label></td>
                    <td>
                        <input type="date" id="birthday" name="birthday" required></br>
                        <span>※半角数字　例）19850101</span>
                    </td>
                </tr>
            </table>
            <div class="button-container">
                <button type="submit" onclick="location.href='P29.html'" class="btn">ログイン画面に戻る</button>
                <button type="submit" onclick="location.href='#'" class="btn">送信</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
