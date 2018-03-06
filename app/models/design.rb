class Design < ApplicationRecord
  belongs_to :user
  has_many :votes

  validates :a, presence: true
  validates :b, presence: true
  validates :title, presence: true
end
