<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TMC カーシェア</title>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/P56.css">
    <link rel="stylesheet" href="css/P57.css">
    <link rel="stylesheet" href="css/P59.css">
    <link rel="stylesheet" href="css/timeTable.css">
</head>
<body>
    <header>
        <img src="img/rog.png" alt="TMCロゴ">
        <h1>TMC カーシェア</h1>
        <h4 id="username">23jy0000様</h4>
        <button class="logout-button" onclick="location.href='P29.html'">ログアウト</button>
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
        <h2>該当車種</h2>
        <div class="additional-info-container" id="additionalInfo">
            <div>
                <label>車種: <%=carName %></label>
                <img src="img/NISSAN.jpg" alt="車" />
            </div>
            <table class="info-table">
                <tr>
                    <td>駆動</td>
                    <td>4WD</td>
                </tr>
                <tr>
                    <td>安全装備</td>
                    <td>ドライブレコーダー, ブレーキサポート, バックモニター</td>
                </tr>
                <tr>
                    <td>備考</td>
                    <td>ETC車載器</td>
                </tr>
            </table>
        </div>
        <div class="reservation-inputs">
            <div>
                <label for="calendar">利用日:　　　</label>
                <input type="date" id="calendar" name="calendar" placeholder="YYYY-MM-DD">
            </div>

            <div>
                <label for="startTime">利用開始時間:</label>
                <input type="time" id="startTime" name="startTime" placeholder="HH:MM">
            </div>

            <div>
                <label for="endTime">利用終了時間:</label>
                <input type="time" id="endTime" name="endTime" placeholder="HH:MM">
            </div>
        </div> 
        <div class="button-container" id="actionButtons" style="margin-top: 20px;">
            <button class="back-button" onclick="location.href='P56.jsp'">戻る</button>
            <button class="confirm-button" onclick="checkAvailability()">空き状況確認</button>
        </div>
        
        <div class="availability-info" id="availabilityInfo" style="display: none;">
            <table id="carShareTable" style="display: none;">
                <tr align="left">
                    <th colspan="42">12月11日</th>
                </tr>
                <tr>
                    <td colspan="4">09:00</td>
                    <td colspan="4">10:00</td>
                    <td colspan="4">11:00</td>
                    <td colspan="4">12:00</td>
                    <td colspan="4">13:00</td>
                    <td colspan="4">14:00</td>
                    <td colspan="4">15:00</td>
                    <td colspan="4">16:00</td>
                    <td colspan="4">17:00</td>
                </tr>
                <tr>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="unavailable"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                    <td class="available"></td>
                </tr>
            </table>
            <div class="button-container" id="actionButtons" style="margin-top: 20px; justify-content: center;">
                <button class="confirm-button" onclick="location.href='P63_02.jsp'">入力内容確認画面へ</button>
            </div>
        </div>
    </main>

    <script>
        function checkAvailability() {
            const calendar = document.getElementById('calendar').value;
            const startTime = document.getElementById('startTime').value;
            const endTime = document.getElementById('endTime').value;

            // テーブルのみを表示
            document.getElementById('availabilityInfo').style.display = 'block'; // 情報を表示
            document.getElementById('carShareTable').style.display = 'table'; // テーブルを表示
            
            // タイトルとテキストを非表示
            document.getElementById('availabilityText').style.display = 'none';
        }
    </script>
</body>
</html>
