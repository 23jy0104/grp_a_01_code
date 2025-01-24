package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import model.Customer;

public class CustomerSearch {
	private Connection con=null;
	
	public Connection createConnection() throws SQLException{
		String url="jdbc:mysql://localhost:3306/23jya01";
		String user="23jya01";
		String password="23jya01";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection(url,user,password);
		} catch (ClassNotFoundException e) {
			System.err.println("JDBCドライバーが見つかりません。クラスパスを確認してください。");
			e.printStackTrace();
		} catch (SQLException e){
        	System.out.println("CustomerSearchDBAccess");
            System.err.println("データベース接続に失敗しました。接続情報を確認してください。");
            e.printStackTrace();
            throw new SQLException("DB接続に失敗しました！",e);
        }
		return con;
	}
	public void closeConnection() {
        try {
            if (con != null) {
                con.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	public ArrayList<Customer> searchCustomer(String name,Date birthDate){
		ArrayList<Customer>cs =new ArrayList<>();
		try {
			con=createConnection();
			String sql="select customerName,customerId,phoNumber,email,birthDate from Customer where cutomerName Like ?  AND birthDate ?";
			PreparedStatement state=con.prepareStatement(sql);
			state.setString(1, "%"+name+"%");
			state.setDate(2, new java.sql.Date(birthDate.getTime()));
			ResultSet rs= state.executeQuery();
			while(rs.next()) {
				Customer cus=new Customer();
				cus.setCustomerName(rs.getString("customerName"));
				cus.setCustomerId(rs.getString("customerId"));
				cus.setPhoneNumber(rs.getNString("phoneNumber"));
				cus.setEmail(rs.getString(rs.getString("email")));
				cus.setBirthDate(rs.getDate("birthDate"));
			}
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return cs;
	}
}
