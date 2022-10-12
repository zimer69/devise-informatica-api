class AddProcessadorAndPlacaMaeAndMemoriaRamAndMemoriaRam2AndMemoriaRam3AndMemoriaRam4AndPlacaDeVideoToPedidos < ActiveRecord::Migration[7.0]
  def change
    add_column :pedidos, :processador, :string
    add_column :pedidos, :placa_mae, :string
    add_column :pedidos, :memoria_ram, :integer
    add_column :pedidos, :memoria_ram_2, :integer
    add_column :pedidos, :memoria_ram_3, :integer
    add_column :pedidos, :memoria_ram_4, :integer
    add_column :pedidos, :placa_de_video, :string
  end
end
