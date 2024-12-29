package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.bean.User;
import com.util.UserUtil;

public class UserDao {
	public static void insertUser(User u) {
		try {
			Connection con =  UserUtil.createConnection();
			String sr = "insert into user(fname,lname,email,moile,address,gender) values (?,?,?,?,?,?)";
			PreparedStatement pst = con.prepareStatement(sr);
			pst.setString(1, u.getFname());
			pst.setString(2, u.getLname());
			pst.setString(3, u.getEmail());
			pst.setString(4, u.getMobile());
			pst.setString(5, u.getAddress());
			pst.setString(6, u.getGender());
			pst.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
