class User < ApplicationRecord
  has_many :designs

  validates :email, presence: true
end
