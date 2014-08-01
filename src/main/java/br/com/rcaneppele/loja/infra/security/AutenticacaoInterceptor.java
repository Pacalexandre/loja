package br.com.rcaneppele.loja.infra.security;

import javax.inject.Inject;

import br.com.caelum.vraptor.Accepts;
import br.com.caelum.vraptor.AroundCall;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.controller.ControllerMethod;
import br.com.caelum.vraptor.interceptor.SimpleInterceptorStack;
import br.com.rcaneppele.loja.controller.LoginController;

@Intercepts(before = AutorizacaoInterceptor.class)
public class AutenticacaoInterceptor {

	@Inject
	private Result result;
	
	@Inject
	private UserSession session;
	
	@Accepts
	public boolean accepts(ControllerMethod method) {
		//so intercepta se o metodo ou o Controller estiver anotado com @Security
	    return method.containsAnnotation(Security.class) || method.getController().getType().isAnnotationPresent(Security.class);
	}
	
	@AroundCall
	public void intercepta(SimpleInterceptorStack stack) {
		if (session.isAutenticado()) {
			stack.next();
		} else {
			result.redirectTo(LoginController.class).login();
		}
	}
	
}
