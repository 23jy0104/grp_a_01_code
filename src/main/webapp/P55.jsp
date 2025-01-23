<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="model.Station.java" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TMC カーシェア</title>
    <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="css/P55.css">
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
            <li class="nav-item gnav02"><a href="P53.html">予約・ステーション検索</a></li>
            <li class="nav-item gnav03"><a href="P65.html">予約確認・変更・取り消し</a></li>
            <li class="nav-item gnav04"><a href="P74.html">ご利用履歴</a></li>
            <li class="nav-item gnav05"><a href="P76.html">ご登録情報の確認</a></li>
        </ul>
    </nav>
    
    <main class="main-content">
        <!-- 1×1の表をタイトルとして追加 -->
        <table border="1" style="width: 100%; border-collapse: collapse; margin-top: 20px;">
            <thead>
                <tr>
                    <th style="text-align: center;">該当ステーション一覧</th>
                </tr>
            </thead>
        </table>

        <!-- 3×4の表 -->
        <table border="1" style="width: 100%; border-collapse: collapse; margin-top: 10px;">
            <thead>
                <tr>
                    <th>ステーション名</th>
                    <th>住所</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%=station.getName() %></td>
                    <td>東京都新宿区百人町6-1-4</td>
                    <td>
                        <a href="P56.jsp">
                            <input type="image" id="select_station" name="select_1" src="img/syousai.gif" alt="詳細" />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><%=station.getName() %></td>
                    <td>東京都新宿区西新宿5-2-1</td>
                    <td>
                        <a href="P56.jsp">
                            <input type="image" id="select_station" name="select_2" src="img/syousai.gif" alt="詳細" />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><%=station.getName() %></td>
                    <td>東京都新宿区西落合3-8-15</td>
                    <td>
                        <a href="P56.jsp">
                            <input type="image" id="select_station" name="select_3" src="img/syousai.gif" alt="詳細" />
                        </a>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
    </main>
</body>
</html>
