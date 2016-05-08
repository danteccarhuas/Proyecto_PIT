package com.colmenares.san.jose.service;

import java.util.List;

import com.colmenares.san.jose.beans.EnlaceBean;
import com.colmenares.san.jose.beans.TrabajadorBean;
import com.colmenares.san.jose.beans.UsuarioBean;

public interface UsuarioService {
	

	public abstract UsuarioBean login(UsuarioBean bean) throws Exception;
	public TrabajadorBean traeTrabajador(String idUsuario) throws Exception;
	public abstract List<EnlaceBean> traerEnlacesDeUsuario(String idOperario)throws Exception;


}