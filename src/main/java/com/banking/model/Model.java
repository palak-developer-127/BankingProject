package com.banking.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.banking.utils.Constants;
import com.banking.utils.Customer;

public class Model {
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet res;

	public Model() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(Constants.url, Constants.user, Constants.pwd);
		}
		catch (Exception e) {
			System.out.println("Cannot Connect to DB");
		}
	}

	public boolean registerCustomer(Customer c) {
		try {
			String query = "insert into bank (cname,cust_id,email,phone,pwd,balance) values "
					+ "(?,?,?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, c.getCid());
			pstmt.setString(2, c.getCid());
			pstmt.setString(3, c.getEmail());
			pstmt.setLong(4, c.getPhone());
			pstmt.setString(5, c.getPwd());
			pstmt.setInt(6, c.getBal());

			int x = pstmt.executeUpdate();
			if(x>0)
				return true;
			else
				return false;
		}
		catch (Exception e) {
			return false;
		}
	}

	public Customer login(String cid, String pwd) {
	    Customer c = null; // Initialize customer as null
	    try {
	        String sql = "SELECT * FROM bank WHERE cust_id = ? AND pwd = ?";
	        pstmt = con.prepareStatement(sql);
	        pstmt.setString(1, cid);
	        pstmt.setString(2, pwd);
	        ResultSet res = pstmt.executeQuery();

	        if (res.next()) { // If user exists, create and fill Customer object
	            c = new Customer();
	            c.setAccno(res.getInt("accno"));
	            c.setName(res.getString("cname")); // FIXED COLUMN NAME
	            c.setEmail(res.getString("email"));
	            c.setCid(res.getString("cust_id"));
	            c.setPhone(res.getLong("phone"));
	            c.setBal(res.getInt("balance"));
	        }
	    } catch (Exception e) {
	        e.printStackTrace(); // Print error for debugging
	    }
	    return c; // Returns null if no user found
	}



	public int getBalance(int accno) {
		try {
			String sql="select balance from bank where accno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setLong(1, accno);
			res=pstmt.executeQuery();
			int bal=0;
			while(res.next()==true) {
				bal = res.getInt(1);
			}
			return bal;
		}
		catch(Exception e) {
			return 0;
		}
	}

	public boolean changePwd(String npwd, int accno) {
		try {
			String sql = "update bank set pwd=? where accno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, npwd);
			pstmt.setInt(2, accno);
			int x = pstmt.executeUpdate();
			if(x>0) {
				return true;
			}else {
				return false;
			}
		}
		catch(Exception e) {
			return false;
		}
	}
}