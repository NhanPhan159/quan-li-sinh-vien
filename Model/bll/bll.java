/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.bll;

import Model.bean.sinhvien;
import Model.dao.dao;
import java.util.ArrayList;

/**
 *
 * @author DELL
 */
public class bll {
    dao ch= new dao();
	public boolean isvalid(String username,String pass) {
		return ch.isExistUser(username, pass);
	}
        public ArrayList<sinhvien> GetListSv(){
            return ch.GetListSv();
        }
        public ArrayList<sinhvien> TimkiemSv(String id,String ten,String tuoi, String diachi){
            String ss =id+ten+tuoi+diachi;
            ArrayList<sinhvien> lsv = ch.GetListSv();
            ArrayList<sinhvien> sv = new ArrayList<sinhvien>();
            for(sinhvien i : lsv){
                String s=i.getId()+i.getTen()+i.getTuoi()+i.getDiachi();
                if(s.contains(ss))
                    sv.add(i);
            }
            return sv;
        }
        public void themsv(String id,String ten,String tuoi, String diachi){
            ch.themsv(id, ten, tuoi, diachi);
        }
        public void updatesv(String id,String ten,String tuoi, String diachi){
            ch.updatesv(id, ten, tuoi, diachi);
        }
        public sinhvien getsvByid(String id){
            ArrayList<sinhvien> lsv = ch.GetListSv();
            for (sinhvien i : lsv){
                String s= i.getId();
                if (s.equals(id))
                    return i;
            }
            return new sinhvien();
        }
        public void xoasv(String id){
            ch.xoasv(id);
        }
}
