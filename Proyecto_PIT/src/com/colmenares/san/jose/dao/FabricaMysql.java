package com.colmenares.san.jose.dao;


public class FabricaMysql extends  FabricaDao {

	@Override
	public UsuarioDao getUsuarioDao() {
		return new UsuarioDaoImpl(); 
	}


	
}
