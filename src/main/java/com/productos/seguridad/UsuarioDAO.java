package com.productos.seguridad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.productos.datos.Conexion;

public class UsuarioDAO {
    private Conexion conexion;

    private static final String SELECT_USUARIOS = "SELECT * FROM tb_usuario";
    private static final String BLOQUEAR_USUARIO = "UPDATE tb_usuario SET id_est = ? WHERE id_per = ?";

    public UsuarioDAO(Conexion conexion) {
        this.conexion = conexion;
    }

    public List<Usuario> obtenerUsuarios() {
        List<Usuario> usuarios = new ArrayList<>();

        try (Connection connection = conexion.crearConexion();
             PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USUARIOS);
             ResultSet resultSet = preparedStatement.executeQuery()) {

            while (resultSet.next()) {
                int id_per = resultSet.getInt("id_per");
                int estado = resultSet.getInt("id_est");
                String nombre = resultSet.getString("nombre_us");
                String cedula = resultSet.getString("cedula_us");
                String correo = resultSet.getString("correo_us");
                String clave = resultSet.getString("clave_us");

                Usuario usuario = new Usuario(id_per, estado, nombre, cedula, correo, clave);
                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    }


    public boolean bloquearUsuario(int userId, int nuevoEstado) {
        try (Connection connection = conexion.crearConexion();
             PreparedStatement preparedStatement = connection.prepareStatement(BLOQUEAR_USUARIO)) {

            preparedStatement.setInt(1, nuevoEstado);
            preparedStatement.setInt(2, userId);

            int filasActualizadas = preparedStatement.executeUpdate();
            return filasActualizadas > 0;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }
}
