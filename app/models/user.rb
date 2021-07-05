class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :event_organizations, dependent: :destroy
  has_many :events, through: :event_organizations
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
