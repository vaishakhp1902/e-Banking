/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebank.DAO;

import com.ebank.bean.UserBean;
import com.ebank.database.db;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author isi-admin
 */
public class RegisterDAO {

    public void registerUser(UserBean user) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {

        Connection con = new db().getConnection();
        String sql = "insert into info values('" + user.getFname() + "','" + user.getUsername() + "','" + user.getPassword() + "','" + user.getGender() + "','" + user.getAddress() + "','" + user.getCity() + "','" + user.getState() + "','" + user.getNation() + "','" + user.getAccno() + "','" + user.getAmount() + "','" + user.getOtp() + "','" + user.getEmail() + "')";
        PreparedStatement ps = con.prepareStatement(sql);
        ps.executeUpdate();
        String sql1 = "insert into deposit values('" + user.getFname() + "','" + user.getUsername() + "','" + user.getAccno() + "','" + user.getAmount() + "')";
        PreparedStatement ps1 = con.prepareStatement(sql1);
        ps1.executeUpdate();

        con.close();
        ps.close();
        ps1.close();

    }
}
