class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :name, :age ,presence: true
  has_one :address

        #  has_many :credits
        #  has_many :items
        #  has_many :comments
         
end
