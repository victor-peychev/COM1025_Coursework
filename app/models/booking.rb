class Booking < ApplicationRecord
  belongs_to :user
  has_many :flights
end
