package com.colmenares.san.jose.dao;


public abstract class FabricaDao {

	public static final int MYSQL = 1;
	
	public abstract UsuarioDao getUsuarioDao();
	
	public static FabricaDao getFactorty(int bd) {
		switch (bd) {
			case MYSQL:
				return new FabricaMysql();
		}
		return null;
	}

	

}
