package com.colmenares.san.jose.dao;

import java.util.List;

import com.colmenares.san.jose.beans.EnlaceBean;
import com.colmenares.san.jose.beans.TrabajadorBean;
import com.colmenares.san.jose.beans.UsuarioBean;



public interface UsuarioDao {
	
	

	public UsuarioBean  login(UsuarioBean bean) throws Exception;
	public TrabajadorBean traeTrabajador(String idUsuario) throws Exception;
	public abstract List<EnlaceBean> traerEnlacesDeUsuario(String idUsuario) throws Exception;
	
	
	
}

