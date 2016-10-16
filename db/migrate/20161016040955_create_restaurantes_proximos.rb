class CreateRestaurantesProximos < ActiveRecord::Migration
  def change
    create_table :restaurantes_proximos do |t|
      t.integer :distancia
      t.references :sessao, index: true, foreign_key: true
      t.references :restaurante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
