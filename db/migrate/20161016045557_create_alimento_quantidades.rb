class CreateAlimentoQuantidades < ActiveRecord::Migration
  def change
    create_table :alimento_quantidades do |t|
      t.string :nome
      t.integer :quantidade
      t.references :prato_pronto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
