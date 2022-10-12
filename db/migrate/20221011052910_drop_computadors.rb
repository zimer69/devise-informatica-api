class DropComputadors < ActiveRecord::Migration[7.0]
  def change
    drop_table :computadors, force: :cascade
  end
end
