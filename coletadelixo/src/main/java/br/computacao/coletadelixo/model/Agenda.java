package br.computacao.coletadelixo.model;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Agenda {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private Date data;
	
	public Agenda() {
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getData() {
		return data;
	}
	public void setData(Date data) {
		this.data = data;
	}
}
