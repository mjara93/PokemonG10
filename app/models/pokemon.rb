class Pokemon < ApplicationRecord
  has_many :catches
  has_many :users, through: :catches
  validates :name, presence: true

  mount_uploader :photo, PhotoUploader
end
