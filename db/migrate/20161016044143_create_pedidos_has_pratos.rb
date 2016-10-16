class CreatePedidosHasPratos < ActiveRecord::Migration
  def change
    create_table :pedidos_has_pratos do |t|
      t.references :pedidos, index: true, foreign_key: true
      t.references :pratos, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
