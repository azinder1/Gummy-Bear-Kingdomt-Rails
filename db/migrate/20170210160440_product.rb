class Product < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :cost, :string
      t.column :country_origin, :string
      t.column :description, :string
    end
  end
end
