class Cow < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, :description, :location, :price, presence: true

  BREEDS = [
    'Aberdeen Angus', 
    'Afrikaner',  
    'Alderney', 
    'Belgian Blue', 
    'Belted Galloway', 
    'Black Hereford', 
    'Charolais', 
    'Deoni', 
    'Fjäll', 
    'Hanwoo', 
    'Irish Moiled', 
    'Kherigarh', 
    'Latvian Brown', 
    'Nagori', 
    'Ongole', 
    'Pineywoods', 
    'Raya', 
    'Senepol', 
    'Tudanca', 
    'Vorderwald'
  ]

  COLORS = [
    'Beige',
    'Black',
    'Chestnut',
    'Chocolate',
    'Cocoa',
    'Desert sand',
    'Rosy brown',
    'Sandy brown',
    'Smokey grey',
    'Tan',
    'Taupe',
    'Walnut brown',
    'White'
  ]
end
