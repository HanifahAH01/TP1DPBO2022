/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package tp1dpbo;

import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;



/**
 *
 * @author Hanifah Al Humaira
 */
public class tp1dpbo {
    
   public static Connection conn;
   public static Statement stm;
    
   public void tp1dpbo(){
       try {
            String url = "jdbc:mysql://localhost/tp1dpbo";
            String user = "root";
            String pass = "";
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, user, pass);
            stm = conn.createStatement();
            System.out.println("koneksi berhasil;");
        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Koneksi Gagal" + e.getMessage());
        }
   }
   
   public Statement getStm(){
       return tp1dpbo.stm;
   }
   
   // method for creating query
   public void Query(String query)
   {
       try {
           tp1dpbo();
           String sql = query;
           stm.execute(sql);
       } catch (SQLException e) {
           System.err.println("Read gagal" + e.getMessage());
       }
   }
    
}