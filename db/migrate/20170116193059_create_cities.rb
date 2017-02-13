class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :pos_x
      t.integer :pos_y
      t.string :religion
      t.string :idealsOfPopulation
      t.references :player, index:true , foreign_key: true
      t.references :group, index:true , foreign_key: true
      t.timestamps null: false
    end
  end
end
