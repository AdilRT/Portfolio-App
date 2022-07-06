class Blog < ApplicationRecord
  extend FriendlyId
  # generate a slug using the title of the blog
  friendly_id :title, use: :slugged
end
