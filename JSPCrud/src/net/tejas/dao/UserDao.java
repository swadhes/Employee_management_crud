package net.tejas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import net.tejas.bean.UserBean;
import net.tejas.dbconnection.ConnectionProvider;

public class UserDao {

    private Connection conn;

    public UserDao() {
    	conn = ConnectionProvider.getConnection();
    }

    public void addUser(UserBean userBean) {
        try {
        	String sql = "INSERT INTO users(userid, firstname,lastname,education,country,city)" +
    		" VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            
            ps.setInt(1, userBean.getId());
            ps.setString(2, userBean.getfName());
            ps.setString(3, userBean.getlName());
            ps.setString(4, userBean.geteducation());
            ps.setString(5, userBean.getcountry());
            ps.setString(6, userBean.getcity());
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void removeUser(int userId) {
        try {
        	String sql = "DELETE FROM users WHERE userid=?";
            PreparedStatement ps = conn
                    .prepareStatement(sql);
            ps.setInt(1, userId);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
      }

    public void editUser(UserBean userBean) {    	
    	try {
    		String sql = "UPDATE users SET firstname=?, lastname=?, education=?, country=?, city=? WHERE userid=?";
    		PreparedStatement ps = conn.prepareStatement(sql);
    		ps.setString(1, userBean.getfName());
    		ps.setString(2, userBean.getlName());
    		ps.setString(3, userBean.geteducation());
    		ps.setString(4, userBean.getcountry());
    		ps.setString(5, userBean.getcity());
    		ps.setInt(6, userBean.getId());
    		ps.executeUpdate();
    	} catch (SQLException e) {
    		e.printStackTrace();
    	}
    }

    
    public List getAllUsers() {
        List users = new ArrayList();
        try {
        	String sql = "SELECT * FROM users";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                UserBean userBean = new UserBean();
                userBean.setId(rs.getInt("userid"));
                userBean.setfName(rs.getString("firstname"));
                userBean.setlName(rs.getString("lastname")); 
                userBean.seteducation(rs.getString("education")); 
                userBean.setcountry(rs.getString("country")); 
                userBean.setcity(rs.getString("city")); 
                
                users.add(userBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public UserBean getUserById(int userId) {
    	UserBean userBean = new UserBean();
        try {
        	String sql = "SELECT * FROM users WHERE userid=?";
            PreparedStatement ps = conn.
                    prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
            	userBean.setId(rs.getInt("userid"));
            	userBean.setfName(rs.getString("firstname"));
            	userBean.setlName(rs.getString("lastname"));
            	userBean.seteducation(rs.getString("education")); 
                userBean.setcountry(rs.getString("country")); 
                userBean.setcity(rs.getString("city"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userBean;
    }
}