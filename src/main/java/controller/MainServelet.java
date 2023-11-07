package controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mainDAO.ClientesDAO;
import mainDAO.DestinosDAO;
import mainDAO.PromocoesDAO;
import mainDAO.ReservaDAO;
import model.Clientes;
import model.Destinos;
import model.Promocoes;
import model.Reserva;


@WebServlet(urlPatterns = {"/views/cadastros", "/create", "/edit",  "/delete"})
public class MainServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	ClientesDAO cdao = new ClientesDAO();
	
    DestinosDAO destdao = new DestinosDAO();
	
	ReservaDAO  resdao = new ReservaDAO();
	Reserva res = new Reserva();
	
	PromocoesDAO pdao = new PromocoesDAO();
	
	
    public MainServelet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getServletPath();

		switch (action) {
		
		case "/views/cadastros":
			read(request, response);
			break;
		case "/create":
				create(request, response);
				break;
		case "/edit":
			edit(request, response);
			break;
		case "/delete":
			delete(request, response);
			break;
		default:
			response.sendRedirect("../index.jsp");
			break;
		}

	}
    
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		List<Clientes> listaCli = cdao.getAllClientes();
		
		List<Destinos> listaDest = destdao.getAllDestinos();
		
		List<Reserva> listaRes = resdao.getAllReservas();
		
		List<Promocoes> listaPromo = pdao.getAllPromocoes();
		
		request.setAttribute("Destinos",  listaDest);

		request.setAttribute("Clientes",  listaCli);
		
		request.setAttribute("Reservas",  listaRes);
		
		request.setAttribute("Promos",  listaPromo);

		RequestDispatcher rd = request.getRequestDispatcher("./cadastros/index.jsp");
		rd.forward(request, response);
		
		
	}
	
	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String operacao = request.getParameter("operacao");

	    if ("criarCliente".equals(operacao)) {
	        
	    	 Clientes cli =new Clientes();
	    	
	    	cli.setNome(request.getParameter("nome"));
			cli.setEmail(request.getParameter("email"));
			cli.setSenha(request.getParameter("senha"));
			cli.setTelefone(request.getParameter("telefone"));
			
			cdao.insertCliente(cli);
	    	
	    } else if ("criarDestino".equals(operacao)) {
	        
	    	Destinos dest = new Destinos();
	    	
	    	dest.setPais(request.getParameter("pais"));
			dest.setPreco(Double.parseDouble(request.getParameter("preco")));
			dest.setDuracao(Integer.parseInt(request.getParameter("duracao")));
			
			destdao.insertDestino(dest);
			 	
	    } else if("criarRes".equals(operacao)) {
	    	
	    	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	    	
	    	int clienteId = Integer.parseInt(request.getParameter("cliente"));
            int promocaoId = Integer.parseInt(request.getParameter("promocoes"));
            int destinoId = Integer.parseInt(request.getParameter("destinos"));  
            double valor = Double.parseDouble(request.getParameter("valor"));
            java.sql.Date dataPartida = null;
            java.sql.Date dataRetorno = null; 
            
            try {
            	java.util.Date utilDatePartida = date.parse(request.getParameter("ida"));
                java.util.Date utilDateRetorno = date.parse(request.getParameter("retorn"));

                dataPartida = new java.sql.Date(utilDatePartida.getTime());
                dataRetorno = new java.sql.Date(utilDateRetorno.getTime());
            
            } catch (ParseException e) {
                
                e.printStackTrace();
            }
        
            Destinos dest = destdao.getDestinoById(destinoId);
            Clientes cli = cdao.getClienteById(clienteId);
            Promocoes promo = pdao.getPromocaoById(promocaoId);
            
	    	res = new Reserva(cli, promo, dest, valor, dataPartida, dataRetorno);
	    	resdao.insertReserva(res);
	    	
	    }  else if("criarPromo".equals(operacao)) {
	    	
	    	Promocoes promo = new Promocoes();
	    	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	    	
	    	String validade = request.getParameter("validade");
	    	
	    	promo.setPrecoPromo(Double.parseDouble(request.getParameter("preco")));
	    	
	    	try {
				promo.setValidade(date.parse(validade));
			} catch (Exception e) {
				
			}
	    	
	    	pdao.insertPromocao(promo);
	    	
	    }
	    
	    response.sendRedirect("./views/cadastros");
		
	}
	
	protected void edit(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String operacao = request.getParameter("operacao");
		
		if ("editCli".equals(operacao)) {
			 
				Clientes cli =new Clientes();
				
				cli.setIdCliente(Integer.parseInt(request.getParameter("idCliente")));
				cli.setNome(request.getParameter("nome"));
				cli.setEmail(request.getParameter("email"));
				cli.setSenha(request.getParameter("senha"));
				cli.setTelefone(request.getParameter("telefone"));
		
				cdao.updateCliente(cli);
				
		} else if("editDest".equals(operacao)) {
			
				Destinos dest = new Destinos();
				
				dest.setIdDestino(Integer.parseInt(request.getParameter("id")));
		    	dest.setPais(request.getParameter("pais"));
				dest.setPreco(Double.parseDouble(request.getParameter("preco")));
				dest.setDuracao(Integer.parseInt(request.getParameter("duracao")));
				
				destdao.updateDestino(dest);
				
		}else if("editPromo".equals(operacao)) {
			
				Promocoes promo = new Promocoes();
		    	SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		    	
		    	promo.setIdPromocao(Integer.parseInt(request.getParameter("id")));
		    	String validade = request.getParameter("validade");
		    	promo.setPrecoPromo(Double.parseDouble(request.getParameter("preco")));
		    	
		    	try {
					promo.setValidade(date.parse(validade));
				} catch (Exception e) {	
				}
		    	
		    	pdao.updatePromocao(promo);
			
		}else if("editRes".equals(operacao)) {
			
			   SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
			   
			    res.setIdReserva(Integer.parseInt(request.getParameter("id")));
		    	res.setCliente(cdao.getClienteById(Integer.parseInt(request.getParameter("nome"))));
		    	res.setPromocao(pdao.getPromocaoById(Integer.parseInt(request.getParameter("promo"))));
		    	res.setDestino(destdao.getDestinoById(Integer.parseInt(request.getParameter("dest"))));
	            res.setValor(Double.parseDouble(request.getParameter("valor")));     
	           String dataIda = request.getParameter("ida");
	           String dataVolta = request.getParameter("retorn");
	            
	            try {
					res.setDataIda(date.parse(dataIda));
					res.setDataRetorno(date.parse(dataVolta));
				} catch (Exception e) {	
				}
	            
		    	resdao.updateReserva(res);
		}
		
		response.sendRedirect("./views/cadastros");
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String operacao = request.getParameter("operacao");
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		if("delCli".equals(operacao)) {
			
			cdao.deleteById(id);
			
		} else if ("delDes".equals(operacao)) {
			
			destdao.deleteDestino(id);
			
		} else if("delPromo".equals(operacao)) {
			
			pdao.deletePromocao(id);
			
		} else if("delRes".equals(operacao)) {
			
			resdao.deleteReserva(id);
			
		}
		

		response.sendRedirect("./views/cadastros");
	}

	
	
}
