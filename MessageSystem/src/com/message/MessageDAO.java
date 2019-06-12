package com.message;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Properties;

public class MessageDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private static MessageDAO dao;

	private MessageDAO() {

	}

	public static MessageDAO getDao() {
		if (dao == null) {
			dao = new MessageDAO();
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

	public void send(MessageDTO m) {
		int cnt = 0;
		try {
			getCon();

			String sql = "INSERT into WEB_MESSAGE VALUES(m_num.nextval, ?, ?, ?, sysdate)";

			pst = conn.prepareStatement(sql);
			pst.setString(1, m.getSend_name());
			pst.setString(2, m.getRecevie_email());
			pst.setString(3, m.getContent());

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public ArrayList<MessageDTO> search(String m) {
		ArrayList<MessageDTO> list = new ArrayList<MessageDTO>();

		try {
			getCon();

			String sql = "select * from WEB_MESSAGE where RECEIVE_EMAIL=? ORDER by num desc";

			pst = conn.prepareStatement(sql);
			pst.setString(1, m);

			rs = pst.executeQuery();

			while (rs.next()) {
				int num = rs.getInt(1);
				String send_name = rs.getString(2);
				String recevie_email = rs.getString(3);
				String content = rs.getString(4);
				String day = rs.getString(5);
				
				list.add(new MessageDTO(num, send_name, recevie_email, content, day));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public void deleteAll(String email) {
		int cnt = 0;
		try {
			getCon();

			String sql = "DELETE FROM WEB_MESSAGE WHERE RECEIVE_EMAIL = ?";

			pst = conn.prepareStatement(sql);
			pst.setString(1, email);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public void delete(int c_num) {
		int cnt = 0;
		try {
			getCon();

			String sql = "DELETE FROM WEB_MESSAGE WHERE NUM = ?";

			pst = conn.prepareStatement(sql);
			pst.setInt(1, c_num);

			cnt = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}		
	}
}
