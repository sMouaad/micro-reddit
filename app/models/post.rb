class Post < ApplicationRecord
  has_many :comments
  belongs_to :user

  validates :title, :content, presence: true
  validates :title, length: { minimum: 5 }
  validates :content, length: { in: 10..200 }
end
