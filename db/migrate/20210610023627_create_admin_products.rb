class CreateAdminProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_products do |t|

      t.timestamps
    end
  end
end
