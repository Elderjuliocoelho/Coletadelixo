package br.computacao.coletadelixo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import br.computacao.coletadelixo.model.Coleta;
import br.computacao.coletadelixo.model.Morador;

public class ColetaDao extends Dao<Coleta,Integer>{
	Connection con;
	PreparedStatement pstm;
	ResultSet rs;
	ArrayList<Coleta> lista = new ArrayList<>();
	
	public ArrayList<Coleta> Pesquisar(){
		String sql ="select * from coleta";
		con = new ConexaoDAO().conectaBD();
	
		try {
			pstm = con.prepareStatement(sql);
			rs = pstm.executeQuery(sql);
			
			while(rs.next()) {
			Coleta objColeta =new Coleta();
			objColeta.setId(rs.getInt(""));
			//objColeta.setLixotipo(rs.getString(""));
			//objColeta.setLocalDescarte(rs.getString(""));
			//objColeta.setMorador(rs.getString(""));
			objColeta.setPeso(rs.getDouble(""));
			
			lista.add(objColeta);
			}
		}catch(SQLException e) {
			
		}
		return lista;
	}
}
