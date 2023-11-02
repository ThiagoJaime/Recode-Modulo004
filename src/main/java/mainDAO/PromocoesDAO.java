package mainDAO;

import factory.ConnectionFactory;
import model.Promocoes;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PromocoesDAO {

    // Inserção de Dados
    public void insertPromocao(Promocoes promocao) {
        String sql = "INSERT INTO promocoes (preco_promo, validade) VALUES (?, ?)";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setDouble(1, promocao.getPrecoPromo());
            pstm.setDate(2, new Date(promocao.getValidade().getTime()));

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
    public void deletePromocao(int id) {
        String sql = "DELETE FROM promocoes WHERE id_promocao = ?";

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
    public void updatePromocao(Promocoes promocao) {
        String sql = "UPDATE promocoes SET preco_promo = ?, validade = ? WHERE id_promocao = ?";

        Connection conn = null;
        PreparedStatement pstm = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);

            pstm.setDouble(1, promocao.getPrecoPromo());
            pstm.setObject(2, promocao.getValidade());
            pstm.setInt(3, promocao.getIdPromocao());

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
    public List<Promocoes> getAllPromocoes() {
        String sql = "SELECT * FROM promocoes";

        List<Promocoes> promocoesLista = new ArrayList<>();

        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            rset = pstm.executeQuery();

            while (rset.next()) {
                Promocoes promocao = new Promocoes();

                promocao.setIdPromocao(rset.getInt("id_promocao"));
                promocao.setPrecoPromo(rset.getDouble("preco_promo"));
                promocao.setValidade(rset.getDate("validade"));

                promocoesLista.add(promocao);
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
        return promocoesLista;
    }

    // Obter promoção por ID
    public Promocoes getPromocaoById(int id) {
        String sql = "SELECT * FROM promocoes WHERE id_promocao = ?";
        
        Promocoes promocao = new Promocoes();
        
        Connection conn = null;
        PreparedStatement pstm = null;
        ResultSet rset = null;

        try {
            conn = ConnectionFactory.createConnectionToMySQL();
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1, id);
            rset = pstm.executeQuery();

            if (rset.next()) {
           
                promocao.setIdPromocao(rset.getInt("id_promocao"));
                promocao.setPrecoPromo(rset.getDouble("preco_promo"));
                promocao.setValidade(rset.getDate("validade"));
                
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
        return promocao;
    }
}

