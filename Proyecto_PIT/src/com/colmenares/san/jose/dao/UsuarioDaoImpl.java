package com.colmenares.san.jose.dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.colmenares.san.jose.beans.EnlaceBean;
import com.colmenares.san.jose.beans.TrabajadorBean;
import com.colmenares.san.jose.beans.UsuarioBean;

public class UsuarioDaoImpl implements UsuarioDao {


	SqlSessionFactory sqlMapper = null;
	{
		String archivo = "ConfiguracionIbatis.xml";
		try {
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	

	@Override
	public UsuarioBean login(UsuarioBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		UsuarioBean bean = null;
		try {
			bean = (UsuarioBean) session.selectOne("dawi.SQL_login", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}


	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<EnlaceBean> traerEnlacesDeUsuario(String idUsuario)
			throws Exception {
		SqlSession session = sqlMapper.openSession();
		List lista = new ArrayList<EnlaceBean>();
		try {
			lista = session.selectList("dawi.SQL_traerEnlacesDeUsuario", idUsuario);
			return lista;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}


	@Override
	public TrabajadorBean traeTrabajador(String idUsuario) throws Exception {
		SqlSession session = sqlMapper.openSession();
		TrabajadorBean bean = null;
		try {
			bean = (TrabajadorBean) session.selectOne("dawi.SQL_traeTrabajador", idUsuario);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}

	
}
