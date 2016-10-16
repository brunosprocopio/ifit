class CreateEnderecoSessaos < ActiveRecord::Migration
  def change
    create_table :endereco_sessaos do |t|
      t.integer :cep
      t.string :pais
      t.string :estado
      t.string :cidade
      t.string :rua
      t.integer :numero
      t.integer :complemento
      t.references :sessao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
