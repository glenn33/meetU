class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :pictures
  validates :title, presence: true, length: {minimum:3, maximum:32}
  validates :description, presence: true, length: {minimum:10, maximum:120}
  validates :address, presence: true
  validates :date, presence: true
end
