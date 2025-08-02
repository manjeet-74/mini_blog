class Post < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  belongs_to :user
  enum status: { draft: 0, published: 1 }
  
  validates :body, presence: true
end
