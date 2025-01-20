<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <title>TMC カーシェア</title>
    <script>
        function validateForm(event) {
            const emailField = document.getElementById('email');
            const phoneField = document.getElementById('name');
            const birthdayField = document.getElementById('birthday');
            const errorDisplay = document.getElementById('error-message');
            errorDisplay.innerHTML = ''; // 前のエラーメッセージをクリア

            let hasError = false;

            // フィールドの初期化
            emailField.style.backgroundColor = '';
            phoneField.style.backgroundColor = '';
            birthdayField.style.backgroundColor = '';

            if (!emailField.value) {
                errorDisplay.innerHTML += '※ご登録メールアドレスは必須です。<br>';
                emailField.style.backgroundColor = '#ffcccc'; // 薄い赤色
                hasError = true;
            }

            if (!phoneField.value) {
                errorDisplay.innerHTML += '※電話番号は必須です。<br>';
                phoneField.style.backgroundColor = '#ffcccc'; // 薄い赤色
                hasError = true;
            }

            if (!birthdayField.value) {
                errorDisplay.innerHTML += '※生年月日は必須です。<br>';
                birthdayField.style.backgroundColor = '#ffcccc'; // 薄い赤色
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
    <button onclick="location.href='P29.jsp'" class="top-right-button">予約・ログイン　▶</button>
    <h1>TMC カーシェア</h1>
    <h2>パスワード再発行(入力)</h2>
    
    <!-- エラーメッセージ用の要素 -->
    <div id="error-message" style="color: red; margin-bottom: 10px;"></div>
    
    <div class="login-container">
        <form onsubmit="validateForm(event)" action="P34.jsp" method="post">
            <table>
                <tr>
                    <td><label for="email">ご登録メールアドレス<span style="color: red;">【必須】</span></label></td>
                    <td>
                        <input type="email" id="email" name="email"></br>
                        <span>※半角英数字</span>
                    </td>
                </tr>
                <tr>
                    <td><label for="name">電話番号<span style="color: red;">【必須】</span></label></td>
                    <td>
                        <input type="text" id="name" name="name"></br>
                        <span>例:09012345678 ハイフンなし<span style="color: red;">※半角数字</span>
                    </td>
                </tr>
                <tr>
                    <td><label for="birthday">生年月日<span style="color: red;">【必須】</span></label></td>
                    <td>
                        <input type="date" id="birthday" name="birthday"></br>
                    </td>
                </tr>
            </table>
            <div class="button-container">
                <button type="button" onclick="location.href='P29.jsp'" class="btn">ログイン画面に戻る</button>
                <button type="submit" class="btn">送信</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
