class Cow < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  
  validates :name, :description, :breed, :location, :price, :category, presence: true
  validates :price, inclusion: { in: [0..500]}
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
    'Desert sand',
    'Rosy brown',
    'Sandy brown',
    'Smokey grey',
    'Tan',
    'Taupe',
    'Walnut brown',
    'White'
  ]

  CATEGORYS = [
    'Battle Cow',
    'Cuddling Cow',
    'Laughing Cow',
    'Emotional support Cow',
    'Farming Cow',
    'Milking Cow',
    'Friendship Cow'
  ]

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
