package com.domain.web;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

public class Company {
    private int id;
    private String name;
    private String city;
    private String district;
    private String street;
    private Date datetime;
    private String niche;
    private int id_user;
    
    public static Company getCompany(int id) throws Exception{
        Company vs = null;
        String SQL = "SELECT * FROM companies WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setInt(1, id);
        ResultSet rs = s.executeQuery();
        if(rs.next()){
            vs = new Company(
                    rs.getInt("id")
                    , rs.getString("name")
                    , rs.getString("city")
                    , rs.getString("district")
                    , rs.getString("street")
                    , rs.getTimestamp("datetime")
                    , rs.getString("niche")
                    , rs.getInt("id_user")
            );
        }
        rs.close();
        s.close();
        return vs;
    }
    
    public static ArrayList<Company> getCompanyList() throws Exception{
        ArrayList<Company> list = new ArrayList<>();
        Statement s = Database.getConnection().createStatement();
        ResultSet rs = s.executeQuery("SELECT * FROM companies");
        while(rs.next()){
            Company vs = new Company(
                    rs.getInt("id")
                    , rs.getString("name")
                    , rs.getString("city")
                    , rs.getString("district")
                    , rs.getString("street")
                    , rs.getTimestamp("datetime")
                    , rs.getString("niche")
                    , rs.getInt("id_user")
            );
            list.add(vs);
        }
        rs.close();
        s.close();
        return list;
    }
    
    public static ArrayList<Company> geCompanyByUser(int id_user) throws Exception{
        ArrayList<Company> list = new ArrayList<>();
        String SQL = "SELECT * FROM companies WHERE id_user=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setInt(1, id_user);
        ResultSet rs = s.executeQuery(SQL);
        while(rs.next()){
            Company vs = new Company(
                    rs.getInt("id")
                    , rs.getString("name")
                    , rs.getString("city")
                    , rs.getString("district")
                    , rs.getString("street")
                    , rs.getTimestamp("datetime")
                    , rs.getString("niche")
                    , rs.getInt("id_user")
            );
            list.add(vs);
        }
        rs.close();
        s.close();
        return list;
    }
    
    public static void addCompany(String name, String city, String district, String street, String niche, int id_user)throws Exception{
        String SQL = "INSERT INTO vehicles_stays VALUES("
                + "default,?,?,?,?,?,?,?)";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, name);
        s.setString(2, city);
        s.setString(3, district);
        s.setString(3, street);
        s.setTimestamp(4, new Timestamp(new Date().getTime()));
        s.setString(5, niche);
        s.setInt(6, id_user);
        s.execute();
        s.close();
    }
    
    public static void finishCompany(int id)throws Exception{
        String SQL = "DELETE FROM companies"
                + " WHERE id=?";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setInt(1, id);
        s.execute();
        s.close();
    }

    public Company(int id, String name, String city, String district, String street, Date datetime, String niche, int id_user) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.district = district;
        this.street = street;
        this.datetime = datetime;
        this.niche = niche;
        this.id_user = id_user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public Date getDatetime() {
        return datetime;
    }

    public void setDatetime(Date datetime) {
        this.datetime = datetime;
    }

    public String getNiche() {
        return niche;
    }

    public void setNiche(String niche) {
        this.niche = niche;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }
    
}