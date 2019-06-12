package com.member;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static MemberDAO dao;

	private MemberDAO() {

	}

	public static MemberDAO getDao() {
		if (dao == null) {
			dao = new MemberDAO();
			System.out.println("=======================DAO가 생성 되었습니다.");
		} else {
			System.out.println("=======================DAO가 있습니다.");
		}
		return dao;
	}

	private void getCon() {
		try {
			InputStream in = this.getClass().getResourceAsStream("../../db.properties");
			Properties p = new Properties();
			p.load(in);

			Class.forName(p.getProperty("driver"));

			String url = p.getProperty("url");
			String user = p.getProperty("id");
			String password = p.getProperty("pw");

			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}

			if (pst != null) {
				pst.close();
			}

			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void join(MemberDTO m) {
		try {
			getCon();

			String sql = "INSERT INTO WEB_MEMBER(EMAIL, PW, TEL, ADDR) VALUES(?, ?, ?, ?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, m.getEmail());
			pst.setString(2, m.getPw());
			pst.setString(3, m.getTel());
			pst.setString(4, m.getAddr());

			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public MemberDTO login(MemberDTO m) {
		MemberDTO result = null;

		try {
			getCon();

			String sql = "select EMAIL, TEL, ADDR from WEB_MEMBER where email=? and pw=?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, m.getEmail());
			pst.setString(2, m.getPw());

			rs = pst.executeQuery();

			if (rs.next()) {
				String email = rs.getString(1);
				String tel = rs.getString(2);
				String addr = rs.getString(3);
				
				result = new MemberDTO(email, tel, addr);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return result;
	}
	
	public int update(MemberDTO m) {
		int cnt = 0;
		
		try {
			getCon();

			String sql = "UPDATE WEB_MEMBER SET PW = ?, TEL = ?, ADDR = ? WHERE EMAIL = ?";

			pst = conn.prepareStatement(sql);
			
			pst.setString(1, m.getPw());
			pst.setString(2, m.getTel());
			pst.setString(3, m.getAddr());
			pst.setString(4, m.getEmail());

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cnt;
	}
}
