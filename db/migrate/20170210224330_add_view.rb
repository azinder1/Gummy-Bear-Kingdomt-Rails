class AddView < ActiveRecord::Migration[5.0]
  def change
    add_attachment :products, :views, :integer
  end
end
