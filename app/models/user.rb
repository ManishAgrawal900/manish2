class User < ApplicationRecord
	#has_and_belongs_to_many :services
   has_many :joins
  has_many :services, through: :joins,dependent: :destroy
  

	validates :name, presence: true,length: { minimum: 2 }
  validates :email, presence: true,format: { with: /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i},uniqueness: true
  validates :password, presence: true, length: { in: 4..9 }
  
  



  

has_secure_password

	def self.authenticate(login, pass)
    user = find_by_name(login) || find_by_email(login)
    return user if user && user.matching_password?(pass)
  end

  def matching_password?(pass)
    BCrypt::Password.new(password_digest) == pass
  end
end



