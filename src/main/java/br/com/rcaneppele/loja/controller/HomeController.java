package br.com.rcaneppele.loja.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Result;
import br.com.rcaneppele.loja.infra.security.Security;

@Controller
@Security
public class HomeController {

	@Inject
	private Result result;
	
	@Get({"/", "/home"})
	public void home() {
		result.include("mensagem", "BEM VINDO!!!!");
	}

}
