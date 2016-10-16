class CreatePratoMontados < ActiveRecord::Migration
  def change
    create_table :prato_montados do |t|
      t.prato :references

      t.timestamps null: false
    end
  end
end
