class Reservation < ApplicationRecord
  belongs_to :guest, optional: true
  belongs_to :guest_detail, optional: true
end
