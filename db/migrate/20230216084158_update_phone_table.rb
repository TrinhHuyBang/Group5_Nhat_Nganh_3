class UpdatePhoneTable < ActiveRecord::Migration[6.0]
  def change
      add_column :books, :name, :string
      add_column :books, :description, :text
      add_column :books, :price, :integer
      add_column :books, :color, :string
      add_column :books, :quantity, :integer
      add_column :books, :producer_name, :string
      remove_column :books, :title
      remove_column :books, :number_of_pages
  end
end
