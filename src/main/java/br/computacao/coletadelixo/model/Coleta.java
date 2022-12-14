package br.computacao.coletadelixo.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Coleta {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Double peso;
	@ManyToOne
	private Morador morador;
	
	@Enumerated(EnumType.STRING)
	private LocalDescarte LocalDescarte;
	
	@Enumerated(EnumType.STRING)
	private LixoTipo lixotipo;
	
	public Coleta() {
		
	}
	
	public Morador getMorador() {
		return morador;
	}

	public void setMorador(Morador morador) {
		this.morador = morador;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Double getPeso() {
		return peso;
	}
	public void setPeso(Double peso) {
		this.peso = peso;
	}
	public LocalDescarte getLocalDescarte() {
		return LocalDescarte;
	}
	public void setLocalDescarte(LocalDescarte localDescarte) {
		LocalDescarte = localDescarte;
	}

	public LixoTipo getLixotipo() {
		return lixotipo;
	}

	public void setLixotipo(LixoTipo lixotipo) {
		this.lixotipo = lixotipo;
	}
	
	
}
