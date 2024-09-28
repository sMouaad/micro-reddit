class User < ApplicationRecord
  has_many :posts
  has_many :comments, through: :posts

  validates :name, :password, presence: true
  validates :name, length: { minimum: 2 }, uniqueness: true
  validates :password, length: { in: 8..20 }
end
