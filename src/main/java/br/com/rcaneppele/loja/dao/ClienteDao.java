package br.com.rcaneppele.loja.dao;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import br.com.rcaneppele.loja.modelo.Cliente;

@Stateless
public class ClienteDao {
	
	@PersistenceContext
	private EntityManager em;
	
	public List<Cliente> todos() {
		return em.createQuery("FROM Cliente c ORDER BY c.nome", Cliente.class).getResultList();
	}
	
	public Cliente buscaPorIr(Long id) {
		return em.find(Cliente.class, id);
	}

	public void adiciona(Cliente cliente) {
		em.persist(cliente);
	}

	public void altera(Cliente cliente) {
		em.merge(cliente);
	}
	
	public void remove(Cliente cliente) {
		em.remove(em.getReference(Cliente.class, cliente.getId()));
	}

}
