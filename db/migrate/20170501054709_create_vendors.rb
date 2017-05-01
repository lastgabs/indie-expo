class CreateVendors < ActiveRecord::Migration[5.1]
  def change
    create_table :vendors do |t|
      t.string :name, index: true, null: false, unique: true
      t.string :email, null: false
      t.string :store, null: false
      t.string :facebook_page
      t.string :facebook_group
      t.string :instagram
      t.string :pinterest
      t.text :description

      t.timestamps
    end
  end
end
