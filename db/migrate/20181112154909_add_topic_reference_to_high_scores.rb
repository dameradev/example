class AddTopicReferenceToHighScores < ActiveRecord::Migration[5.2]
  def change
    add_reference :high_scores, :topic, foreign_key: true
  end
end
