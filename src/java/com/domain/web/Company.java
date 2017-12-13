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
    private String description;
    private int id_user;
    private String phone;
    
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
                    , rs.getString("description")
                    , rs.getString("phone")
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
                    , rs.getString("description")
                    , rs.getString("phone")
                    , rs.getInt("id_user")
            );
            list.add(vs);
        }
        rs.close();
        s.close();
        return list;
    }
    
    public static ArrayList<Company> getCompanyByUser(int id_user) throws Exception{
        ArrayList<Company> list = new ArrayList<>();
        String SQL = "SELECT * FROM companies WHERE id_user="+id_user;
        Statement s = Database.getConnection().createStatement();
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
                    , rs.getString("description")
                    , rs.getString("phone")
                    , rs.getInt("id_user")
            );
            list.add(vs);
        }
        rs.close();
        s.close();
        return list;
    }
    
    public static void addCompany(String name, String city, String district, String street, String niche, String description,String phone, int id_user)throws Exception{
        String SQL = "INSERT INTO companies VALUES("
                + "default,?,?,?,?,?,?,?,?,?)";
        PreparedStatement s = Database.getConnection().prepareStatement(SQL);
        s.setString(1, name);
        s.setString(2, city);
        s.setString(3, district);
        s.setString(4, street);
        s.setTimestamp(5, new Timestamp(new Date().getTime()));
        s.setString(6, niche);
        s.setString(7, description);
        s.setString(8, phone);
        s.setInt(9, id_user);
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

    public Company(int id, String name, String city, String district, String street, Date datetime, String niche,String description,String phone, int id_user) {
        this.id = id;
        this.name = name;
        this.city = city;
        this.district = district;
        this.street = street;
        this.datetime = datetime;
        this.niche = niche;
        this.description = description;
        this.phone = phone;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    
}