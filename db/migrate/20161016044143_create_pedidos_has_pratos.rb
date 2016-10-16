class CreatePedidosHasPratos < ActiveRecord::Migration
  def change
    create_table :pedidos_has_pratos do |t|
      t.references :pedido, index: true, foreign_key: true
      t.references :prato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
