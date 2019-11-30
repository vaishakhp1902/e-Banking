/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ebank.bean;

import java.io.Serializable;

/**
 *
 * @author isi-admin
 */
public class UserBean implements Serializable{

    private String fname;
    private String username;
    private String password;
    private String gender;
    private String address;
    private String city;
    private String state;
    private String nation;
    private String accno;
    private Double amount;
    private String otp;
    private String email;
    @Override
    public String toString() {
        return "UserBean{" + "fname=" + fname + ", username=" + username + ", password=" + password + ", gender=" + gender + ", address=" + address + ", city=" + city + ", state=" + state + ", nation=" + nation + ", accno=" + accno + ", amount=" + amount + ", otp=" + otp + ", email=" + email + '}';
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getNation() {
        return nation;
    }

    public void setNation(String nation) {
        this.nation = nation;
    }

    public String getAccno() {
        return accno;
    }

    public void setAccno(String accno) {
        this.accno = accno;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
 
}
