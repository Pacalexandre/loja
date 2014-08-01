package br.com.rcaneppele.loja.infra.security;

import javax.inject.Inject;
import javax.interceptor.AroundInvoke;
import javax.interceptor.Interceptor;
import javax.interceptor.InvocationContext;

import br.com.caelum.vraptor.Result;
import br.com.rcaneppele.loja.controller.LoginController;

@Interceptor
@Security
public class AutenticacaoInterceptor {

	@Inject
	private Result result;
	
	@Inject
	private UserSession session;
	
	@AroundInvoke
	public Object intercept(InvocationContext ctx) throws Exception {
		if (!session.isAutenticado()) {
			result.redirectTo(LoginController.class).login();
		}
		
		return ctx.proceed();
	}
	
}
