package com.productos.datos;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
    private String driver;
    private String user;
    private String pwd;
    private String cadena;
    private Connection con;

    public Conexion() {
        this.driver = "org.postgresql.Driver";
        this.user = "postgres";
        this.pwd = "1234";
        this.cadena = "jdbc:postgresql://localhost:5432/bd_energia";
        this.con = crearConexion();	
    }

    public Connection crearConexion() {
        Connection conexion = null;
        try {
            System.out.println("Intentando cargar el driver...");
            Class.forName(driver);
            System.out.println("Driver cargado exitosamente.");

            System.out.println("Intentando establecer la conexión a la base de datos...");
            conexion = DriverManager.getConnection(cadena, user, pwd);
            System.out.println("Conexión establecida correctamente a la base de datos: " + cadena);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return conexion;
    }

    public ResultSet Consulta(String sql) throws SQLException {
        java.sql.Statement stmt = con.createStatement();
        return stmt.executeQuery(sql);
    }

}
