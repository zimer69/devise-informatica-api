class PedidosController < ApplicationController
  before_action :authenticate_user!, only: %i[show create new]
  before_action :set_pedido, only: %i[show]
  include Pundit

  def index
    @pedidos = policy_scope(Pedido)
  end

  def show
  end

  def new
    @pedido = Pedido.new
  end

  def create
    @pedido = Pedido.new(pedido_params)
    @pedido.user = current_user
    authorize @pedido
    if @pedido.save
      redirect_to api_v1_pedido_path(@pedido), status: :created
    else
      render_error
    end
  end

  private

  def set_pedido
    @pedido = Pedido.find(params[:id])
    authorize @pedido
  end

  def render_error
    render json: { errors: @pedido.errors.full_messages }, status: :unprocessable_entity
  end

  def pedido_params
    params.require(:pedido).permit(:processador,
                                   :placa_mae,
                                   :memoria_ram,
                                   :memoria_ram_2,
                                   :memoria_ram_3,
                                   :memoria_ram_4,
                                   :placa_de_video)
  end
end
