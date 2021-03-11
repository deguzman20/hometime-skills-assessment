class Guest < ApplicationRecord
  has_many :reservations
  has_many :guest_phone_numbers

  accepts_nested_attributes_for :guest_phone_numbers
end
