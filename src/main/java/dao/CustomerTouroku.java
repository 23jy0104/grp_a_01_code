package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import model.Customer;

public class CustomerTouroku {
private Connection con=null;

	public CustomerTouroku() {
		try {
		Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
		System.exit(1);
		}
		try {
		con=DriverManager.getConnection("jdbc:mysql://10.64.144.5:3306/23jya01?characterEncoding=UTF-8","23jya01","23jya01");
		} catch (SQLException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
		System.exit(1);
		}
	
	}
	public void connectionClose() {
		try {
		con.close();
		} catch (SQLException e) {
		e.printStackTrace();
		}
	}
	public void addCustomer(Customer customer) {
		String sql ="INSERT INTO customer(customer_Name,customer_Password,tell_Number,e_Mail,birth_Date,license_Numner,license_Date,customer_Address,omote_Jpg,ura_Jpg";
		try {
		PreparedStatement pstmt=con.prepareStatement(sql);
		pstmt.setString(1, customer.getCustomerName());
		pstmt.setString(2, customer.getCustomerPassword());
		pstmt.setString(3,customer.getPhoneNumber());
		pstmt.setString(4, customer.getEmail());
		pstmt.setDate(5,(java.sql.Date) customer.getBirthDate());
		pstmt.setString(6, customer.getLicenceNumber());
		pstmt.setDate(7, (java.sql.Date) customer.getLicenceDate());
		pstmt.setString(8, customer.getCustomerAddress());
		pstmt.setString(9, customer.getOmote());
		pstmt.setString(10, customer.getUra());
		} catch (SQLException e) {
		// TODO 自動生成された catch ブロック
		e.printStackTrace();
		}
		
	}
	public ArrayList<Customer> searchCustomer(String name,Date birthDate){
		ArrayList<Customer>cs =new ArrayList<>();
		try {
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
			cs.add(cus);
			}
		} catch (SQLException e) {
		// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}return cs;
	}
}