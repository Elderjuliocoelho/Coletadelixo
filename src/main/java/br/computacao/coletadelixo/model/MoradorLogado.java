package br.computacao.coletadelixo.model;

public class MoradorLogado extends Morador {
	private static Morador usuario;
	private MoradorLogado() {};
	
	public static void setUsuario(Morador usuarioVar) {
		usuario = usuarioVar;
	}
	
	public static Morador getUsuario() {
		return usuario;
	}
}