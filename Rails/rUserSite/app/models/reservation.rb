class Reservation < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  VALID_PHONE_REGEX = /\d{10}/
  validates :phone,	presence: true,	format: { with: VALID_PHONE_REGEX }
  validates :time,	presence: true
  VALID_PARTY = /\d{1}/
  validates :people,	presence: true, format: { with: VALID_PARTY }
end
