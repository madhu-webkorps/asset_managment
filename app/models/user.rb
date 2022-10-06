class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #enum for define role
  enum role: [:user , :admin]      
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

  #association with product fields
  has_many :product_fields
  has_many :products

  validates :password, presence: true
  
  validates :email, presence: true,
              uniqueness: {case_sensitive: false}

  def self.user_with_id(id) 
    user = User.find(id)
    return user.id
  end

end
