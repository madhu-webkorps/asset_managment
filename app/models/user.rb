class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

#association with product fields
  has_many :product_fields
  has_many :products

  validates :password, presence: true
  
  validates :email, presence: true,
              uniqueness: {case_sensitive: false}
end
