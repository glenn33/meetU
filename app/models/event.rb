class Event < ApplicationRecord
  belongs_to :category
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :event_organizations, dependent: :destroy
  has_one :user, through: :event_organization
  has_one_attached :pictures
end

