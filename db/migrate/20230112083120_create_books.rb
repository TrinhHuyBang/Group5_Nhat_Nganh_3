class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :id
      t.string :name
      t.text :description
      t.integer :price
      t.string :color
      t.integer :quantity
      t.integer :id_producer
      

      t.timestamps
    end
  end
end
