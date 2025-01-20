<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <title>TMC カーシェア</title>
    <script>
        function validateForm(event) {
            const passwordField = document.getElementById('password');
            const confirmPasswordField = document.getElementById('confirm-password');
            const errorDisplay = document.getElementById('error-message');
            errorDisplay.innerHTML = ''; // 前のエラーメッセージをクリア

            // フィールドの初期化
            passwordField.style.backgroundColor = '';
            confirmPasswordField.style.backgroundColor = '';

            let hasError = false;

            if (!passwordField.value) {
                errorDisplay.innerHTML += '※新規パスワード入力は必須です。<br>';
                passwordField.style.backgroundColor = '#ffcccc'; // 薄い赤色
                hasError = true;
            }

            if (!confirmPasswordField.value) {
                errorDisplay.innerHTML += '※新規パスワード再入力は必須です。<br>';
                confirmPasswordField.style.backgroundColor = '#ffcccc'; // 薄い赤色
                hasError = true;
            }

            if (hasError) {
                event.preventDefault(); // フォームの送信を中止
            }
        }
    </script>
</head>
<body>

<div class="maincontents">
    <img src="img/rog.png" alt="TMC Logo"/>
    <h1>TMC カーシェア</h1>
    <h2>パスワード再発行(入力)</h2>
    
    <!-- エラーメッセージ用の要素 -->
    <div id="error-message" style="color: red; margin-bottom: 10px;"></div>
    
    <div class="login-container">
        <form onsubmit="validateForm(event)" action="P38.html" method="post">
            <table>
                <tr>
                    <td><label for="password">新規パスワード入力<span style="color: red;">【必須】</span></label></td>
                    <td>
                        <input type="password" id="password" name="password"></br>
                        <span>※半角数字8字～12字まで</span>
                    </td>
                </tr>
                <tr>
                    <td><label for="confirm-password">新規パスワード再入力<span style="color: red;">【必須】</span></label></td>
                    <td>
                        <input type="password" id="confirm-password" name="confirm-password"></br>
                        <span>※半角数字8字～12字まで</span>
                    </td>
                </tr>
            </table>
            <div class="button-container">
                <button type="button" onclick="location.href='P29.html'" class="btn">キャンセル</button>
                <button type="submit" class="btn">再設定</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
