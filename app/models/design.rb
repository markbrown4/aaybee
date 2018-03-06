class Design < ApplicationRecord
  belongs_to :user

  validates :a, presence: true
  validates :b, presence: true
  validates :title, presence: true
end
