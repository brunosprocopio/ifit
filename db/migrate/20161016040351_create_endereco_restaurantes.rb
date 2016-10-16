class CreateEnderecoRestaurantes < ActiveRecord::Migration
  def change
    create_table :endereco_restaurantes do |t|
      t.integer :cep
      t.string :pais
      t.string :estado
      t.string :cidade
      t.string :rua
      t.integer :numero
      t.integer :complemento
      t.references :restaurante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
