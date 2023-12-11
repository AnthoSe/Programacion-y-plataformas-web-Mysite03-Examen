package com.productos.seguridad;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.productos.datos.Conexion;

public class Foro {
    private int idMensaje;
    private int idUsuario;
    private String mensaje;
    private String autor;
    private Timestamp fechaPublicacion;

    // Constructor sin argumentos
    public Foro() {
    }

    // Constructor con argumentos
    public Foro(int idMensaje, int idUsuario, String mensaje, String autor, Timestamp fechaPublicacion) {
        this.idMensaje = idMensaje;
        this.idUsuario = idUsuario;
        this.mensaje = mensaje;
        this.autor = autor;
        this.fechaPublicacion = fechaPublicacion;
    }

    // Getters y setters (tus métodos existentes)

    // Método para obtener todos los mensajes del foro
    public static List<Foro> obtenerMensajes() {
        List<Foro> mensajes = new ArrayList<>();

        // Utilizando la conexión existente de la clase Conexion
        try (Connection connection = new Conexion().crearConexion();
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT * FROM tb_foro")) {

            while (resultSet.next()) {
                int idMensaje = resultSet.getInt("id_mensaje");
                int idUsuario = resultSet.getInt("id_us");
                String mensaje = resultSet.getString("mensaje");
                String autor = resultSet.getString("autor");
                Timestamp fechaPublicacion = resultSet.getTimestamp("fecha_publicacion");

                Foro mensajeForo = new Foro(idMensaje, idUsuario, mensaje, autor, fechaPublicacion);
                mensajes.add(mensajeForo);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return mensajes;
    }

    // Método para publicar un mensaje en el foro
    public static boolean publicarMensaje(Foro mensaje) {
        // Utilizando la conexión existente de la clase Conexion
        try (Connection connection = new Conexion().crearConexion();
             PreparedStatement preparedStatement = connection.prepareStatement(
                     "INSERT INTO tb_foro (id_us, mensaje, autor, fecha_publicacion) VALUES (?, ?, ?, CURRENT_TIMESTAMP)")) {

            preparedStatement.setInt(1, mensaje.getIdUsuario());
            preparedStatement.setString(2, mensaje.getMensaje());
            preparedStatement.setString(3, mensaje.getAutor());

            int filasActualizadas = preparedStatement.executeUpdate();
            return filasActualizadas > 1;

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;
    }

	public int getIdMensaje() {
		return idMensaje;
	}

	public void setIdMensaje(int idMensaje) {
		this.idMensaje = idMensaje;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getAutor() {
		return autor;
	}

	public void setAutor(String autor) {
		this.autor = autor;
	}

	public Timestamp getFechaPublicacion() {
		return fechaPublicacion;
	}

	public void setFechaPublicacion(Timestamp fechaPublicacion) {
		this.fechaPublicacion = fechaPublicacion;
	}
}
