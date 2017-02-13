class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :gold
      t.string :inGameName
      t.references :user, index:true , foreign_key: true
      t.timestamps null: false
    end
  end
end
