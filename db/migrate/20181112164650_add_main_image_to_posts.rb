class AddMainImageToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :main_image, :text
  end
end
