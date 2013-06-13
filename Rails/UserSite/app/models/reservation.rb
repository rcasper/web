class Reservation < ActiveRecord::Base
  validates :date, presence: true
  validates :name, presence: true
end
