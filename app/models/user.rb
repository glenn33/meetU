class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :events, dependent: :destroy
  has_one_attached :profile_picture
  has_one_attached :banner_picture
  has_many :messages, dependent: :destroy
  validates :full_name, presence: true, length: { minimum:2, maximum:20 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]
  
  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first
    # Uncomment the section below if you want users to be created if they don't exist
    unless user
      user = User.create(
        email: data['email'],
        password: Devise.friendly_token[0,20]
      )
    end
    user
  end      
end
