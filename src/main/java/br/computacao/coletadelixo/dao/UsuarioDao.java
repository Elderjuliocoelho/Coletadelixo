package br.computacao.coletadelixo.dao;

import javax.persistence.TypedQuery;

import br.computacao.coletadelixo.model.Usuario;

public class UsuarioDao extends Dao<Usuario,Integer> { 
	public Usuario login (String user, String password) {
		Usuario usuario; 
		try {
			TypedQuery<Usuario> query=em.createQuery("SELECT e FROM Usuario e WHERE e.user = ?1 and e.password = ?2",Usuario.class);
			query.setParameter(1, user);
			query.setParameter(2, password);
			usuario = query.getSingleResult();
		} catch (Exception e) {
			usuario = null;
		}
		return usuario;
		
	}

}