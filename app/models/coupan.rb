class Coupan < ApplicationRecord
  belongs_to :service


  validates :name, presence: true
  validates :service_id,presence: true, uniqueness:true
  validates :price ,presence: true
  validates :date ,presence: true
end
