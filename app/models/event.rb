class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :pictures
  has_many :messages, dependent: :destroy
  validates :title, presence: true, length: {minimum:3, maximum:32}
  validates :description, presence: true, length: {minimum:10}
  validates :address, presence: true
  validates :date, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
  against: [ :title, :description ],
  using: {
    tsearch: { prefix: true }
  }

end
