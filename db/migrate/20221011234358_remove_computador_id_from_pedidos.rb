class RemoveComputadorIdFromPedidos < ActiveRecord::Migration[7.0]
  def change
    remove_column :pedidos, :computador_id
  end
end
