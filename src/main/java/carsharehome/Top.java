package carsharehome;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class Top extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/23jya01";
    private static final String USER = "23jya01";
    private static final String PASS = "23jya01";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String customerName = request.getParameter("customer_Name");
        String driverLicenceNumber = request.getParameter("licence_Number");
        String customerPassword=request.getParameter("customer_Password");
        String tellNumber=request.getParameter("tell_Number");
        String email=request.getParameter("e_Mail");
        String birthDateString = request.getParameter("birth_Date");
        Date birthDate = null;
        String licenseNumber=request.getParameter("license_Number");
        String licenseDateString=request.getParameter("license_Date");
        Date licenseDate=null;
        String customerAddress=request.getParameter("customer_Address");
        String omoteJpg=request.getParameter("omote_Jpg");
        String uraJpg=request.getParameter("ura_Jpg");
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd"); // フォーマットを指定
        dateFormat.setLenient(false); // 厳密なパースを行う

        try {
            birthDate = dateFormat.parse(birthDateString);
            licenseDate=dateFormat.parse(licenseDateString);
        } catch (ParseException e) {
            response.getWriter().write("生年月日の形式が正しくありません。");
            return; // エラー処理
        }
        // データベース接続と登録処理
        try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASS)) {
            // 重複チェックのためのクエリ
            String checkQuery = "SELECT COUNT(*) FROM customer WHERE driver_licence_number = ?";
            try (PreparedStatement checkStmt = conn.prepareStatement(checkQuery)) {
                checkStmt.setString(1, driverLicenceNumber);
                ResultSet rs = checkStmt.executeQuery();
                rs.next();
                if (rs.getInt(1) > 0) {
                    response.getWriter().write("免許証番号はすでに存在します。");
                    return;
                }
            }

            // データ挿入
            String insertQuery = "INSERT INTO users (customer_Name,customer_Password,tell_Number,e_Mail,birth_Date,license_Number,licemse_Date,customer_Address,omote_Jpg,ure_Jpg) VALUES (?, ?)";
            try (PreparedStatement insertStmt = conn.prepareStatement(insertQuery)) {
                insertStmt.setString(2, customerName);
                insertStmt.setString(3, customerPassword);
                insertStmt.setString(4, tellNumber);
                insertStmt.setString(5, email);
                insertStmt.setDate(6, (java.sql.Date) birthDate);
                insertStmt.setString(7, licenseNumber);
                insertStmt.setDate(8, (java.sql.Date) licenseDate);
                insertStmt.setString(8, customerAddress);
                insertStmt.setString(9, omoteJpg);
                insertStmt.setString(10, uraJpg);
                insertStmt.executeUpdate();
            }

            response.getWriter().write("登録が成功しました。");

        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().write("エラーが発生しました。");
        }
    }
}
