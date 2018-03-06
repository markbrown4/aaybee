class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :design

  validates :a, presence: true
end
