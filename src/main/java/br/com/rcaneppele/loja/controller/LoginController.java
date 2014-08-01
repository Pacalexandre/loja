package br.com.rcaneppele.loja.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;

@Controller
public class LoginController {

	@Path("/login")
	public void login() {
	}

	@Path("/logout")
	public void logout() {
	}

	@Path("/denied")
	public void unauthorized() {
	}
	
}
