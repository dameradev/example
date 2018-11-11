class AddSlugToHighScores < ActiveRecord::Migration[5.2]
  def change
    add_column :high_scores, :slug, :string
    add_index :high_scores, :slug, unique: true
  end
end
