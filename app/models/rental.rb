class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  enum :status, { pending: 1, approved: 2, declined: 3 } , _default: "pending"

end
