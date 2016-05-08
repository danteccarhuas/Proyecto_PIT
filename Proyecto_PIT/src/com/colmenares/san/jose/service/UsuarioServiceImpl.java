package com.colmenares.san.jose.service;

import java.util.List;

import com.colmenares.san.jose.beans.EnlaceBean;
import com.colmenares.san.jose.beans.TrabajadorBean;
import com.colmenares.san.jose.beans.UsuarioBean;
import com.colmenares.san.jose.dao.FabricaDao;
import com.colmenares.san.jose.dao.UsuarioDao;

public class UsuarioServiceImpl implements UsuarioService {

	FabricaDao factoria = FabricaDao.getFactorty(FabricaDao.MYSQL);
	UsuarioDao dao = factoria.getUsuarioDao();



	@Override
	public UsuarioBean login(UsuarioBean bean) throws Exception {
		return dao.login(bean);
	}


	@Override
	public List<EnlaceBean> traerEnlacesDeUsuario(String idOperario)throws Exception {
		return dao.traerEnlacesDeUsuario(idOperario);

	}


	@Override
	public TrabajadorBean traeTrabajador(String idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return dao.traeTrabajador(idUsuario);
	}


}
