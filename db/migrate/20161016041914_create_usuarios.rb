class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :Cpf
      t.integer :idade
      t.string :usuario
      t.string :senha
      t.references :sessao, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
