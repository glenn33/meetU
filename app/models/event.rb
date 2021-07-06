class Event < ApplicationRecord
  belongs_to :category
  has_many :bookings
  has_many :event_organizations
  has_many_attached :pictures
end
