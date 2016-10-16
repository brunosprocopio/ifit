class CreatePratoMontados < ActiveRecord::Migration
  def change
    create_table :prato_montados do |t|
      t.references :prato, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
