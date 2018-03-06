class Design < ApplicationRecord
  belongs_to :user
  has_many :votes

  validates :a, presence: true
  validates :b, presence: true
  validates :title, presence: true

  mount_uploader :a, DesignUploader
  mount_uploader :b, DesignUploader
end
