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
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author isi-admin
 */
public class LoginDAO {

    public ResultSet loginUser(UserBean user) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        Connection con = new db().getConnection();
        String sa = "select * from info where username='" + user.getUsername() + "' and password='" + user.getPassword() + "'";
        PreparedStatement pr = con.prepareStatement(sa);
        ResultSet rs = pr.executeQuery();
        return rs;
    }
}
