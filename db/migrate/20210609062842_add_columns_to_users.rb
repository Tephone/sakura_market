class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :zipcode, :string
    add_column :users, :prefecture, :string
    add_column :users, :address, :string
  end
end
