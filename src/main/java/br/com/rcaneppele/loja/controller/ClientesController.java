package br.com.rcaneppele.loja.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.Validator;
import br.com.rcaneppele.loja.dao.ClienteDao;
import br.com.rcaneppele.loja.modelo.Cliente;

@Controller
public class ClientesController {

	@Inject
	private Result result;
	
	@Inject
	private Validator validator;
	
	@Inject
	private ClienteDao dao;
	
	@Get("/clientes")
	public void list() {
		result.include("clientes", dao.todos());
	}
	
	@Get("/clientes/novo")
	public void form() {
	}
	
	@Post("/clientes")
	public void add(Cliente cliente) {
		validaCadastro(cliente);
		
		dao.adiciona(cliente);
		result.include("info", "Cliente cadastrado com sucesso.");
		redirectToList();
	}
	
	@Get("/clientes/{id}")
	public void edit(Long id) {
		result.include("cliente", dao.buscaPorIr(id));
		result.of(this).form();
	}
	
	@Put("/clientes")
	public void update(Cliente cliente) {
		validaCadastro(cliente);
		
		dao.altera(cliente);
		redirectToList();
	}

	@Delete("/clientes")
	public void delete(Cliente cliente) {
		dao.remove(cliente);
		redirectToList();
	}

	private void redirectToList() {
		result.redirectTo(this).list();
	}
	
	private void validaCadastro(Cliente cliente) {
		validator.validate(cliente);
		validator.onErrorForwardTo(this).form();
	}
	
}
