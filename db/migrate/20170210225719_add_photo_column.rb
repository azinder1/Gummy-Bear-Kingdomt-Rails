class AddPhotoColumn < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :products, :views
    add_column :products, :views, :integer
  end
end
