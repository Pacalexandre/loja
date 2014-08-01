package br.com.rcaneppele.loja.dao;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;

import br.com.rcaneppele.loja.modelo.Usuario;

@Stateless
public class UsuarioDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public Usuario buscaPorLoginESenha(String login, String senha) {
		try {
			return em.createQuery("FROM Usuario u WHERE u.login = :login AND u.senha = :senha", Usuario.class)
					.setParameter("login", login)
					.setParameter("senha", senha)
					.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

}
