class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome
      t.string :descricao
      t.integer :cozinha
      t.integer :tipo
      t.references :restaurante, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
