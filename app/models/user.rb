class User < ApplicationRecord
  validates :email, presence: true
  has_many :comments, as: :commentable
  has_many :leads
  has_many :user_phases
  has_many :phases, through: :user_phases
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         
end
