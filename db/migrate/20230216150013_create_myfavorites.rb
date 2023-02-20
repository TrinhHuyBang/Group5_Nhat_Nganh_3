class CreateMyfavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :myfavorites do |t|
      t.string :smart_phone_name
      t.string :description
      t.float :price
      t.string :color

      t.timestamps
    end
  end
end
