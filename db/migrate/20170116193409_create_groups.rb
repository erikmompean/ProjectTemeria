class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :type1
      t.integer :type2
      t.integer :type3
      t.boolean :battleStyle
      t.references :player, index:true , foreign_key: true
      t.timestamps null: false
    end
  end
end
