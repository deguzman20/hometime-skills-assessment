class GuestPhoneNumber < ApplicationRecord
  belongs_to :guest, optional: true
end
