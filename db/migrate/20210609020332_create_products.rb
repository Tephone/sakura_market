class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :price, null: false
      t.text :description
      t.boolean :visible, default: true
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
