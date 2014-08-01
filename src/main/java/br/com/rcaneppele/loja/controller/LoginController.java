package br.com.rcaneppele.loja.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.validator.SimpleMessage;
import br.com.caelum.vraptor.validator.Validator;
import br.com.rcaneppele.loja.dao.UsuarioDao;
import br.com.rcaneppele.loja.infra.security.UserSession;
import br.com.rcaneppele.loja.modelo.Usuario;

@Controller
public class LoginController {

	@Inject
	private Result result;

	@Inject
	private Validator validator;

	@Inject
	private UsuarioDao dao;

	@Inject
	private UserSession session;

	@Get("/login")
	public void login() {
	}

	@Post("/login")
	public void autentica(String login, String senha) {
		Usuario usuario = dao.buscaPorLoginESenha(login, senha);
		validaUsuarioCadastrado(usuario);
		session.autentica(usuario);
		result.redirectTo(HomeController.class).home();
	}

	@Get("/logout")
	public void logout() {
		session.desautentica();
		result.redirectTo(this).login();
	}
	
	public void denied() {
	}

	private void validaUsuarioCadastrado(final Usuario usuario) {
		validator.check(usuario != null, new SimpleMessage("error", "Dados incorretos!", (Object[]) null));
		validator.onErrorRedirectTo(this).login();
	}

}
