class CreatePratoProntos < ActiveRecord::Migration
  def change
    create_table :prato_prontos do |t|
      t.string :preco
      t.references :prato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
