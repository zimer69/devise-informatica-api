class Api::V1::PedidosController < Api::V1::BaseController
  def index
    @pedidos = policy_scope(Pedido)
  end

  def show
    @pedido = Pedido.find(params[:id])
    authorize @pedido
  end
end
