class AddMemoriaRam2AndMemoriaRam3AndMemoriaRam4ToComputadors < ActiveRecord::Migration[7.0]
  def change
    add_column :computadors, :memoria_ram_2, :string
    add_column :computadors, :memoria_ram_3, :string
    add_column :computadors, :memoria_ram_4, :string
  end
end
