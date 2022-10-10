class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :computadors, :placaMae, :placa_mae
    rename_column :computadors, :memoriaRam, :memoria_ram
    rename_column :computadors, :placaDeVideo, :placa_de_video
  end
end
