class CreateComputadors < ActiveRecord::Migration[7.0]
  def change
    create_table :computadors do |t|
      t.string :processador
      t.string :placaMae
      t.string :memoriaRam
      t.string :placaDeVideo

      t.timestamps
    end
  end
end
