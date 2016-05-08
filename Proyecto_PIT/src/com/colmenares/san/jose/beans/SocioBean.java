package com.colmenares.san.jose.beans;

public class SocioBean {

	private String idsocio,nombres,apellidos;
	private UsuarioBean usuario;
	
	public String getIdsocio() {
		return idsocio;
	}
	public void setIdsocio(String idsocio) {
		this.idsocio = idsocio;
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
