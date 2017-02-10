class AddPhoto < ActiveRecord::Migration[5.0]
  def change
    add_attachment :products, :picture
  end
end
