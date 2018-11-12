class AddSubtitleToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :subtitle, :string
  end
end
