class CreateSessaos < ActiveRecord::Migration
  def change
    create_table :sessaos do |t|
      t.date :data
      t.timestamps null: false
    end
  end
end
