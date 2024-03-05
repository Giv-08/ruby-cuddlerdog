class Dog < ApplicationRecord
  belongs_to :user
  # adding photo of dog
  has_one_attached :image
end
