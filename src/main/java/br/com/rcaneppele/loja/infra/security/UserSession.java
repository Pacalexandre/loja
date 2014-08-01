package br.com.rcaneppele.loja.infra.security;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;

import br.com.rcaneppele.loja.modelo.Usuario;

@SessionScoped
public class UserSession implements Serializable {

	private static final long serialVersionUID = 1L;

	private Usuario usuario;
	
	public void autentica(Usuario usuario) {
		this.usuario = usuario;
	}
	
	public void desautentica() {
		this.usuario = null;
	}
	
	public boolean isAutenticado() {
		return this.usuario != null;
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	
}
