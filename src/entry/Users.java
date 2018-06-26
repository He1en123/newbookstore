package entry;
import java.sql.*;

import DAO.DBCon;

public class Users {
	String userid;
	String username;
	String password;
	int tel;
	String address;
	float money;
	String role;
	public Connection conn = null;
	
	public void setusers(String userid,//注册用户
							String username,
							String password,
							String tel,
							String address,
							String money,
							String role) throws ClassNotFoundException, SQLException{
		conn =new DBCon().getCon();
		String sql ="insert into users (userid,username,password,tel,address,money,role)"
				+ " VALUES ('"+userid+"','"+username+"','"+password+"','"+tel+"','"+address+"','"+money+"','"+role+"')";
		Statement stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		stmt.close();
	}
	public int checkusers(String userid,String password)//判断用户存在与否,登录使用
			throws ClassNotFoundException, SQLException{
		conn =new DBCon().getCon();
		String sql="select * from users where "
				+ "userid=?  and password=? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, password);
		ResultSet rs = pstmt.executeQuery();
		if(rs.next())
			return 1;
		else 
			return 0;//存在返回1
	}
	
	public ResultSet usersinfo(String userid) throws SQLException, ClassNotFoundException{
		//返回关于用户信息的结果集	
		conn =new DBCon().getCon();
			String sql="select * from users where "
					+ "userid=? ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userid);
			ResultSet rs = pstmt.executeQuery();
			return rs;//似乎需要rs.next();
	}
	public ResultSet allusersinfo() throws SQLException, ClassNotFoundException{
		//返回关于用户信息的结果集	
		conn =new DBCon().getCon();
			String sql="select * from users where ";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			return rs;//似乎需要rs.next();
	}
	public void updateuser(String userid,String username,String password,String telephone,String address) throws SQLException, ClassNotFoundException{
		//返回关于用户信息的结果集	
		conn =new DBCon().getCon();
		String sql = "UPDATE users SET userid = ?,username = ?,password = ?,tel = ?,address = ? WHERE userid = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, userid);
		pstmt.setString(2, username);
		pstmt.setString(3, password);
		pstmt.setString(4, telephone);
		pstmt.setString(5, address);
		pstmt.setString(6, userid);
		pstmt.execute();
	}
	public void updatemoney(String money,String userid) throws ClassNotFoundException, SQLException{
		conn = new DBCon().getCon();
		String sql = "UPDATE users SET money = ? WHERE userid = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, money);
		pstmt.setString(2, userid);
		pstmt.execute();
	}
}
