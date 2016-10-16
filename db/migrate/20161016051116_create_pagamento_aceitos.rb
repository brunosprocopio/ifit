class CreatePagamentoAceitos < ActiveRecord::Migration
  def change
    create_table :pagamento_aceitos do |t|
      t.boolean :cheque
      t.boolean :credito_amer_expre
      t.boolean :credito_diners
      t.boolean :credito_goodcard
      t.boolean :credito_hipercard
      t.boolean :credito_mastercard
      t.boolean :credito_verdecard
      t.boolean :credito_visa
      t.boolean :credito_banricompras
      t.boolean :dinheiro
      t.boolean :debito_banricompras
      t.boolean :debito_bo
      t.boolean :debito_mastercard
      t.boolean :debito_visa
      t.boolean :vale_alelo
      t.boolean :vale_sodexo
      t.boolean :vale_ticket
      t.boolean :vale_valecard
      t.boolean :vale_verocard
      t.boolean :vale_srsmart
      t.references :restaurante, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
