package mainDAO;

import factory.ConnectionFactory;
import model.Clientes;
import model.Destinos;
import model.Promocoes;
import model.Reserva;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ReservaDAO {

    // Inserção de Dados
    public void insertReserva(Reserva reserva) {
        String sql = "INSERT INTO Reserva (cliente_id, promocao_id, destino_id, valor, dataIda, dataRetorno) VALUES (?, ?, ?, ?, ?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setInt(1, reserva.getCliente().getIdCliente());
            pstm.setInt(2, reserva.getPromocao().getIdPromocao());
            pstm.setInt(3, reserva.getDestino().getIdDestino());
            pstm.setDouble(4, reserva.getValor());
            pstm.setDate(5,  new Date(reserva.getDataIda().getTime()));
            pstm.setDate(6, new Date(reserva.getDataRetorno().getTime()));  
            
            pstm.execute();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Exclusão de Dados
    public void deleteReserva(int id) {
        String sql = "DELETE FROM Reserva WHERE id_reserva = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            
            pstm.setInt(1, id);
            
            pstm.execute();
            
        } catch (Exception e) {
        	
            e.printStackTrace();
            
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Atualização de Dados
    public void updateReserva(Reserva reserva) {
        String sql = "UPDATE Reserva SET cliente_id = ?, promocao_id = ?, destino_id = ?, valor = ?, data_ida = ?, data_return = ? WHERE id_reserva = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setInt(1, reserva.getCliente().getIdCliente());
            pstm.setInt(2, reserva.getPromocao().getIdPromocao());
            pstm.setInt(3, reserva.getDestino().getIdDestino());
            pstm.setDouble(4, reserva.getValor());
            pstm.setDate(5,  new Date(reserva.getDataIda().getTime()));
            pstm.setDate(6, new Date(reserva.getDataRetorno().getTime()));  
            pstm.setInt(7, reserva.getIdReserva());

            pstm.execute();
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    // Exibição de Dados
    public List<Reserva> getAllReservas() {
       
        List<Reserva> Reserva = new ArrayList<Reserva>();
        
        String sql = "SELECT * FROM reserva JOIN destinos ON reserva.destino_id = destinos.id_destino JOIN promocoes ON reserva.promocao_id = promocoes.id_promocao JOIN clientes ON reserva.cliente_id = clientes.id_cliente ORDER BY id_reserva";
        
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                
            	Reserva reserva = new Reserva();
                Destinos destino = new Destinos();
            	Promocoes promocao = new Promocoes();
                Clientes cliente = new Clientes();
                
                reserva.setIdReserva(rset.getInt("id_reserva"));
                reserva.setValor(rset.getDouble("valor"));
                reserva.setDataIda(rset.getDate("dataIda"));
                reserva.setDataRetorno(rset.getDate("dataRetorno"));
                
            	destino.setIdDestino(rset.getInt("id_destino"));
                destino.setPais(rset.getString("pais"));
            	destino.setPreco(rset.getDouble("preco"));
            	destino.setDuracao(rset.getInt("duracao"));
            	
            	cliente.setIdCliente(rset.getInt("id_cliente"));
                cliente.setNome(rset.getString("nome"));
                cliente.setEmail(rset.getString("email"));
                cliente.setSenha(rset.getString("senha"));
                cliente.setTelefone(rset.getString("telefone"));
            	
                promocao.setIdPromocao(rset.getInt("id_promocao"));
                promocao.setPrecoPromo(rset.getDouble("preco_promo"));
                promocao.setValidade(rset.getDate("validade"));
                
                reserva.setCliente(cliente);
                reserva.setDestino(destino);
                reserva.setPromocao(promocao);
                
                Reserva.add(reserva);
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rset != null) {
                    rset.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return Reserva;
    }

    // Obter reserva por ID
    public Reserva getReservaById(int id) {
        String sql = "SELECT * FROM reserva JOIN destinos ON reserva.destino_id = destinos.id_destino JOIN promocoes ON reserva.promocao_id = promocoes.id_promocao JOIN clientes ON reserva.cliente_id = clientes.id_cliente ORDER BY id_reserva";
        
        Reserva reserva = new Reserva();
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();

             rset.next();    
               
             Destinos destino = new Destinos();
         	Promocoes promocao = new Promocoes();
             Clientes cliente = new Clientes();
             
             reserva.setIdReserva(rset.getInt("id_reserva"));
             reserva.setValor(rset.getDouble("valor"));
             reserva.setDataIda(rset.getDate("dataIda"));
             reserva.setDataRetorno(rset.getDate("dataRetorno"));
             
         	destino.setIdDestino(rset.getInt("id_destino"));
             destino.setPais(rset.getString("pais"));
         	destino.setPreco(rset.getDouble("preco"));
         	destino.setDuracao(rset.getInt("duracao"));
         	
         	cliente.setIdCliente(rset.getInt("id_cliente"));
             cliente.setNome(rset.getString("nome"));
             cliente.setEmail(rset.getString("email"));
             cliente.setSenha(rset.getString("senha"));
             cliente.setTelefone(rset.getString("telefone"));
         	
             promocao.setIdPromocao(rset.getInt("id_promocao"));
             promocao.setPrecoPromo(rset.getDouble("preco_promo"));
             promocao.setValidade(rset.getDate("validade"));
             
             reserva.setCliente(cliente);
             reserva.setDestino(destino);
             reserva.setPromocao(promocao);
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rset != null) {
                    rset.close();
                }
                if (pstm != null) {
                    pstm.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return reserva;
    }
}
