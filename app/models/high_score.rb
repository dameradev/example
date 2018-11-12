class HighScore < ApplicationRecord
  extend FriendlyId
  friendly_id :game, use: :slugged

  validates_presence_of :game, :score
  belongs_to :topic
end
