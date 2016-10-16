class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :data
      t.integer :preco_total
      t.integer :tipo_pagamento
      t.references :usuario, index: true, foreign_key: true
      t.references :endereco_restaurante, index: true, foreign_key: true
      t.references :dados_cartao, true, foreign_key: true
      t.timestamps null: false
    end
  end
end
