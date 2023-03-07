class CreateWorks < ActiveRecord::Migration[6.1]
  def change
    create_table :works do |t|
      t.references :work_cat, foreign_key: true
      t.string :title
      t.string :image
      t.integer :price
      t.text :text
      t.string :onlyone
      t.string :status
      
      t.timestamps
    end
  end
end
