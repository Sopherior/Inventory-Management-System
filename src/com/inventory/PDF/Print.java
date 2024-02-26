package com.inventory.PDF;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JRDesignQuery;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;
import com.inventory.Database.ConnectionFactory;
import java.sql.Connection;

public class Print {
    
    Connection conn = null;
    
    public Print() {
        try {
            conn = new ConnectionFactory().getConn();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    // Method for printing Products table
    public void printInventory(){
        conn = new ConnectionFactory().getConn();
        String sql="SELECT * FROM products";
        try{
            JasperDesign jasperDesign = JRXmlLoader.load("build/classes/com/inventory/PDF/inventory_report.jrxml");
            JRDesignQuery updateQuery=new JRDesignQuery();
            updateQuery.setText(sql);
            jasperDesign.setQuery(updateQuery);
            JasperReport jasperReport= JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport,null,conn);
            JasperViewer.viewReport(jasperPrint ,false);
        }catch (Exception err){
            err.printStackTrace();
        }
    }

    // Method for printing Suppliers table
    public void printSuppliersDetails(){
        conn = new ConnectionFactory().getConn();
        String sql="SELECT * FROM suppliers";
        try{
            JasperDesign jasperDesign = JRXmlLoader.load("build/classes/com/inventory/PDF/suppliers.jrxml");
            JRDesignQuery updateQuery=new JRDesignQuery();
            updateQuery.setText(sql);
            jasperDesign.setQuery(updateQuery);
            JasperReport jasperReport= JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport,null,conn);
            JasperViewer.viewReport(jasperPrint ,false);
        }catch (Exception err){
            err.printStackTrace();
        }
    }

    // Method for printing Sales table
    public void printSalesDetails(){
        conn = new ConnectionFactory().getConn();
        String sql="SELECT * FROM salesinfo";
        try{
            JasperDesign jasperDesign = JRXmlLoader.load("build/classes/com/inventory/PDF/sales_report.jrxml");
            JRDesignQuery updateQuery=new JRDesignQuery();
            updateQuery.setText(sql);
            jasperDesign.setQuery(updateQuery);
            JasperReport jasperReport= JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport,null,conn);
            JasperViewer.viewReport(jasperPrint ,false);
        }catch (Exception err){
            err.printStackTrace();
        }
    }

    // Method for printing Purchases table
    public void printPurchaseDetails(){
        conn = new ConnectionFactory().getConn();
        String sql="SELECT * FROM purchaseinfo";
        try{
            JasperDesign jasperDesign = JRXmlLoader.load("build/classes/com/inventory/PDF/purchase_report.jrxml");
            JRDesignQuery updateQuery=new JRDesignQuery();
            updateQuery.setText(sql);
            jasperDesign.setQuery(updateQuery);
            JasperReport jasperReport= JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport,null,conn);
            JasperViewer.viewReport(jasperPrint ,false);
        }catch (Exception err){
            err.printStackTrace();
        }
    }
    
    // Method for printing User Logs table
    public void printUserLogs(){
        conn = new ConnectionFactory().getConn();
        String sql="SELECT users.name,userlogs.username,in_time,out_time,location FROM userlogs INNER JOIN users on userlogs.username=users.username";
        try{
            JasperDesign jasperDesign = JRXmlLoader.load("build/classes/com/inventory/PDF/user_logs.jrxml");
            JRDesignQuery updateQuery=new JRDesignQuery();
            updateQuery.setText(sql);
            jasperDesign.setQuery(updateQuery);
            JasperReport jasperReport= JasperCompileManager.compileReport(jasperDesign);
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport,null,conn);
            JasperViewer.viewReport(jasperPrint ,false);
        }catch (Exception err){
            err.printStackTrace();
        }
    }
}


