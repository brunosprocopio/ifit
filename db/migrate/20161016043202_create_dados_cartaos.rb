class CreateDadosCartaos < ActiveRecord::Migration
  def change
    create_table :dados_cartaos do |t|
      t.string :nome
      t.date :vencimento
      t.integer :numero
      t.string :cod_seguranca_integer
      t.integer :tipo

      t.timestamps null: false
    end
  end
end
