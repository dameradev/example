class Post < ApplicationRecord
  has_many :skills
  validates_presence_of :title, :body, :main_image

  accepts_nested_attributes_for :skills,
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  include Placeholder
  def self.cooking
    where(subtitle: 'Cooking')
  end

  scope :baking, -> { where(subtitle: 'Baking') }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
  end

end
