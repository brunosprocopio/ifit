class CreatePratos < ActiveRecord::Migration
  def change
    create_table :pratos do |t|
      t.string :nome
      t.string :descricao
      t.boolean :alema
      t.boolean :arabe
      t.boolean :asiatica
      t.boolean :brasileira
      t.boolean :chinesa
      t.boolean :francesa
      t.boolean :indiana
      t.boolean :italiana
      t.boolean :japonesa
      t.boolean :mediterraneo
      t.boolean :mexicana
      t.boolean :portuguesa
      t.boolean :tailandesa
      t.integer :tipo
      t.references :restaurante, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
