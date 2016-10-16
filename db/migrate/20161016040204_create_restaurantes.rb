class CreateRestaurantes < ActiveRecord::Migration
  def change
    create_table :restaurantes do |t|
      t.string :nome
      t.string :cnpj
      t.string :razao_social
      t.string :usuario
      t.string :senha

      t.timestamps null: false
    end
  end
end
