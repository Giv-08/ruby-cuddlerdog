class Dog < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy

  has_one_attached :photo
  validates :users_username, presence: true
  # if adding dog and owner photo
  # has_one_attached :dog_photo
  # has_one_attached :owner_photo
end
