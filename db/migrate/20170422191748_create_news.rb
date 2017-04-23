class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :image
      t.string :content
      t.date :date_publication

      t.timestamps null: false
    end
  end
end
