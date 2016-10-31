class CreatePagamentoAceitos < ActiveRecord::Migration
  def change
    create_table :pagamento_aceitos do |t|
      t.boolean :cash
      t.boolean :credit_card
      t.boolean :debit_card
      t.references :restaurante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
