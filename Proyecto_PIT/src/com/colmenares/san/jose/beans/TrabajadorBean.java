package com.colmenares.san.jose.beans;

public class TrabajadorBean {

	private String idtrabajador,nombres,apellidos;
	private UsuarioBean usuario;
	
	public String nombreCompleto(){
		return nombres+" "+apellidos;
	}
	
	public String getIdtrabajador() {
		return idtrabajador;
	}
	public void setIdtrabajador(String idtrabajador) {
		this.idtrabajador = idtrabajador;
	}
	public String getNombres() {
		return nombres;
	}
	public void setNombres(String nombres) {
		this.nombres = nombres;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public UsuarioBean getUsuario() {
		return usuario;
	}
	public void setUsuario(UsuarioBean usuario) {
		this.usuario = usuario;
	}
	
	
}
