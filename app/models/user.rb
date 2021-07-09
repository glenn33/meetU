class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :events, dependent: :destroy
  has_one_attached :profile_picture
  has_many :messages
  validates :full_name, presence: true, length: { minimum:2, maximum:20 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
