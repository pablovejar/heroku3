class Order < ApplicationRecord
  belongs_to :user
  has_many :dishes
  belongs_to :restaurant
end
