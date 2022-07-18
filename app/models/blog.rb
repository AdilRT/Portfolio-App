class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}
  extend FriendlyId
  # generate a slug using the title of the blog
  friendly_id :title, use: :slugged
  validates_presence_of :title, :body

end
 