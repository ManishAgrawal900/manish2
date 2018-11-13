class Vendor < ApplicationRecord
	has_many :services, dependent: :destroy


	validates :name, presence: true,length: { minimum: 2 }
  validates :email, presence: true,format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i},uniqueness: true

end
