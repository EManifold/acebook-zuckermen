class User < ApplicationRecord
  include Clearance::User
  validates :username, presence: true, uniqueness: { message: "Username already taken" }
  has_many :posts
  has_many :comments, dependent: :destroy
end
