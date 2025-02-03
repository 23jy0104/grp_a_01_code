package carShareHome;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Customer;

/**
 * Servlet implementation class carShareNewCustomer
 */
public class carShareNewCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public carShareNewCustomer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        String customerSei = request.getParameter("customerSei");
        String customerMei = request.getParameter("customerMei");
        String customerName = customerSei + " " + customerMei; // 姓と名の間にスペース
        String customerSeiKana = request.getParameter("customerSeiKana");
        String customerMeiKana = request.getParameter("customerMeiKana");
        String customerNameKana = customerSeiKana + " " + customerMeiKana; // スペースを追加
        String customerPassword = request.getParameter("customer_Password");
        String tellNumber = request.getParameter("tell_Number");
        String eMail = request.getParameter("e_Mail");
        String birthDateString = request.getParameter("birth_Date");
        Date birthDate = null;
        String licenseNumber = request.getParameter("license_Number");
        String licenseDateString = request.getParameter("license_Date");
        Date licenseDate = null;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        try {
            birthDate = dateFormat.parse(birthDateString);
            licenseDate = dateFormat.parse(licenseDateString);
        } catch (Exception e) {
            e.printStackTrace(); // 例外処理
        }

        if (islicenseNumberExists(licenseNumber)) {
            System.out.println("このライセンス番号は既に登録されています。");
            request.setAttribute("errorMessage", "このライセンス番号は既に登録されています。");
            RequestDispatcher rd = request.getRequestDispatcher("error.jsp"); // エラー画面へ遷移
            rd.forward(request, response);
        } else {
            // Customerオブジェクトを作成
            Customer customer = new Customer();
            customer.setCustomerName(customerMei,customerSei);
            customer.setCustomerNameKana(customerSeiKana,customerMeiKana);
            customer.setCustomerPassword(customerPassword);
            customer.setPhoneNumber(tellNumber);
            customer.setEmail(eMail);
            customer.setBirthDate(birthDate);
            customer.setLicenseNumber(licenseNumber);
            customer.setLicenceDate(licenseDate);

            // データベースに挿入
            insertCustomerData(customer);

            RequestDispatcher rd = request.getRequestDispatcher("P20.jsp"); // 遷移先を指定
            rd.forward(request, response);
        }
    }

    // insertCustomerDataメソッドはそのまま
    private void insertCustomerData(Customer customer) {
        // データベース接続の情報を設定
        String jdbcUrl = "jdbc:mysql://10.64.144.5:3306/23jya01";
        String dbUser = "23jya01";
        String dbPassword = "23jya01";

        Connection connection = null;
        PreparedStatement preparedStatement = null;

        try {
            // データベースに接続
            connection = DriverManager.getConnection(jdbcUrl, dbUser, dbPassword);

            // SQL文を準備
            String sql = "INSERT INTO customers (name, name_kana, password, tell_number, email, birth_date, license_number, license_date) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connection.prepareStatement(sql);

            // パラメータを設定
            preparedStatement.setString(1, customer.getCustomerName());
            preparedStatement.setString(2, customer.getCustomerNameKana());
            preparedStatement.setString(3, customer.getCustomerPassword());
            preparedStatement.setString(4, customer.getPhoneNumber());
            preparedStatement.setString(5, customer.getEmail());
            preparedStatement.setDate(6, new java.sql.Date(customer.getBirthDate().getTime()));
            preparedStatement.setString(7, customer.getLicenseNumber());
            preparedStatement.setDate(8, new java.sql.Date(customer.getLicenceDate().getTime()));

            // SQL文を実行
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(); // 例外処理
        } finally {
            // リソースを解放
            try {
                if (preparedStatement != null) preparedStatement.close();
                if (connection != null) connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    private boolean islicenseNumberExists(String licenseNumberString) {
        // 実装を行う必要があります
        return false; // 仮実装
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
