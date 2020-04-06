class Post < ApplicationRecord
  has_many :comments, dependent: :destroy #dstroy the comments when the post is deleted
  validates :title, presence: true, length: {minimum: 5}
  validates :body, presence: true
end
