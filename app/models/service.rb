class Service < ApplicationRecord
  belongs_to :Vendor

   has_many :joins
  has_many :users, through: :joins

has_one :coupan

  validates :name, presence: true,length: { minimum: 2 }
  validates_size_of :image, maximum: 1.megabytes, message: "should be less than 100kb"
  
 

  mount_uploader :image, ImageUploader



                  
end
