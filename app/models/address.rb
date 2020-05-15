class Address < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user, optional: true
  validates :zipcode, :address ,presence: true
  belongs_to_active_hash :prefecture

end
