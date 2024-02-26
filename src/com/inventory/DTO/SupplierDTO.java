package com.inventory.DTO;

// Data Transfer Object for Suppliers
public class SupplierDTO {

    private int suppID;
    private String suppCode, fullName, location, phone, repName, repPhone, account;

    public int getSuppID() {
        return suppID;
    }

    public void setSuppID(int suppID) {
        this.suppID = suppID;
    }

    public String getSuppCode() {
        return suppCode;
    }

    public void setSuppCode(String suppCode) {
        this.suppCode = suppCode;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setRepName(String repName) {
        this.repName = repName;
    }

    public void setRepPhone(String repPhone) {
        this.repPhone = repPhone;
    }

    public void setAccount(String account) {
        this.account = account;
    }
    
    public String getRepName() {
        return repName;
    }

    public String getRepPhone() {
        return repPhone;
    }

    public String getAccount() {
        return account;
    }
}
