package com.service;

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
			InputStream in = this.getClass().getResourceAsStream("./db.properties");
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

	public int join(MemberDTO m) {
		int cnt = 0;

		try {
			getCon();

			String sql = "insert into MEMBER values(?, ?, ?)";

			pst = conn.prepareStatement(sql);

			pst.setString(1, m.getId());
			pst.setString(2, m.getPw());
			pst.setString(3, m.getName());

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}

	public String login(MemberDTO m) {
		String name = null;

		try {
			getCon();

			String sql = "select name from member where id=? and pw=?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, m.getId());
			pst.setString(2, m.getPw());

			rs = pst.executeQuery();

			if (rs.next()) {
				name = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		close();
		return name;
	}
}
