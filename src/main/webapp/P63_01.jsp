<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TMC カーシェア</title>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/P63.css">
</head>
<body>
    <header>
        <img src="img/rog.png" alt="TMCロゴ">
        <h1>TMC カーシェア</h1>
        <div class="user-info">
            <h4 id="username">23jy0000様</h4>
            <button class="logout-button" onclick="location.href='P29.jsp'">ログアウト</button>
        </div>
    </header>
    <nav class="nav">
        <ul>
            <li class="nav-item gnav02"><a href="P53.jsp">予約・ステーション検索</a></li>
            <li class="nav-item gnav03"><a href="P65.jsp">予約確認・変更・取り消し</a></li>
            <li class="nav-item gnav04"><a href="P74.jsp">ご利用履歴</a></li>
            <li class="nav-item gnav05"><a href="P76.jsp">ご登録情報の確認</a></li>
        </ul>
    </nav>
    <main>
        <h2 style="text-decoration: underline; text-align: left;">入力内容確認</h2>
        <div class="content">
            <div class="flex-container">
                <div class="image-section"></div>
                    <img src="img/NISSAN.jpg" alt="車両" style="width: 400px; height: auto; margin-top: 10px;">
                    <p>BNR32型 skyline Nismo<br>新宿 わ ‥32<br>（ダークシルバー）</p>
                </div>
                <div class="table-section">
                    <table>
                        <tr>
                            <td class="highlight">ステーション名</td>
                            <td>新宿1ステーション</td>
                        </tr>
                        <tr>
                            <td class="highlight">利用開始日時</td>
                            <td>2024年12月11日13時30分</td>
                        </tr>
                        <tr>
                            <td class="highlight">利用終了日時</td>
                            <td>2024年12月11日15時00分</td>
                        </tr>
                        <tr>
                            <td class="highlight">利用予定時間</td>
                            <td>1時間30分</td>
                        </tr>
                        <tr>
                            <td class="highlight">課金予定時間</td>
                            <td>2,640円</td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="button-container">
            <button class="action-button" onclick="location.href='P57.jsp'">入力内容を訂正する</button>
            <button class="action-button" onclick="location.href='P64.jsp'">予約登録</button>
        </div>
    </main>
</body>
</html>
