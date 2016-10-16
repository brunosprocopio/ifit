class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.integer :nota_alimento
      t.string :comentario
      t.integer :nota_custo
      t.integer :nota_geral
      t.references :prato, index: true, foreign_key: true
      t.references :usuario, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
