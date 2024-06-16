/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.dao;

import Model.bean.sinhvien;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class dao {
    public boolean isExistUser(String username, String password) {
            return true;
	}
        public ArrayList<sinhvien> GetListSv() {
            Connection conn = null;	
            ResultSet rs = null;
            Statement st =null;
	    String url = "jdbc:mysql://localhost:3306/luyentap";
	    String name = "root";
	    String pass = "";
            ArrayList<sinhvien> re=new ArrayList<>();
	    try {
	    Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection(url, name, pass);
	    st=conn.createStatement();
	    String sql="select * from sinhvien";
	    rs=st.executeQuery(sql);
	   while(rs.next())
	    {
	    	sinhvien s=new sinhvien();
                s.setId(rs.getString("id"));
                s.setTen(rs.getString("ten"));
                s.setTuoi(rs.getString("tuoi"));
                s.setDiachi(rs.getString("diachi"));
                re.add(s);
	    }
           return re;
	    }
	    catch (Exception e1) {
			// TODO: handle exception
		}
	    return re;
	}
        public void updatesv(String id,String ten,String tuoi, String diachi){
            String querry="Update sinhvien set ten='"+ten+"', tuoi ='"+tuoi+"', diachi='"+diachi+"' where id = '"+id+"'";
            Connection conn = null;	
            ResultSet rs = null;
            Statement st =null;
	    String url = "jdbc:mysql://localhost:3306/luyentap";
	    String name = "root";
	    String pass = "";
            ArrayList<sinhvien> re=new ArrayList<>();
	    try {
	    Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection(url, name, pass);
	    st=conn.createStatement();
	    int n=st.executeUpdate(querry);
	    }
	    catch (Exception e1) {
			// TODO: handle exception
		}
        }
        public void themsv(String id,String ten,String tuoi, String diachi){
            String querry = "INSERT INTO sinhvien(id, ten, tuoi, diachi) VALUE ('"+id+"','"+ten+"','"+tuoi+"','"+diachi+"')";
            Connection conn = null;	
            ResultSet rs = null;
            Statement st =null;
	    String url = "jdbc:mysql://localhost:3306/luyentap";
	    String name = "root";
	    String pass = "";
            ArrayList<sinhvien> re=new ArrayList<>();
	    try {
	    Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection(url, name, pass);
	    st=conn.createStatement();
	    int n=st.executeUpdate(querry);
	    }
	    catch (Exception e1) {
			// TODO: handle exception
		}
        }
        public void xoasv(String id){
            String querry="Delete from sinhvien where id = '"+id+"'";
            Connection conn = null;	
            ResultSet rs = null;
            Statement st =null;
	    String url = "jdbc:mysql://localhost:3306/luyentap";
	    String name = "root";
	    String pass = "";
	    try {
	    Class.forName("com.mysql.jdbc.Driver");
	    conn = DriverManager.getConnection(url, name, pass);
	    st=conn.createStatement();
	    int n=st.executeUpdate(querry);
	    }
	    catch (Exception e1) {
			// TODO: handle exception
		}
        }

        
}
