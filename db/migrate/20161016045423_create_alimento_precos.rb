class CreateAlimentoPrecos < ActiveRecord::Migration
  def change
    create_table :alimento_precos do |t|
      t.string :nome
      t.float :preco
      t.references :prato_montado, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
