class HighScore < ApplicationRecord
  extend FriendlyId
  friendly_id :game, use: :slugged
end
