class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :type
      t.text :description
      t.integer :attack
      t.integer :defense
      t.integer :morale
      t.integer :pentration
      t.integer :militarPower
      t.integer :goldCost
      t.timestamps null: false
    end
  end
end
