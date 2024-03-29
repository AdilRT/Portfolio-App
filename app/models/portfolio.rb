class Portfolio < ApplicationRecord
  include Placeholder

  after_initialize :set_defaults
  scope :ror_portfolio_items, -> {where(subtitle: 'RoR')}
  has_many :technologies
  validates_presence_of :title, :body, :main_image, :thumb_image
  accepts_nested_attributes_for :technologies, reject_if: lambda {|attrs| attrs['name'].blank? }

  def self.angular
  where(subtitle: 'Angular')
  end

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600',width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350',width: '200')
  end
end
