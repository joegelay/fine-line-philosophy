class User < ApplicationRecord
    has_secure_password 

    has_many :entries 
    has_many :ideas, through: :entries 

    validates :username, :email, :password, presence: true
    validates :username, :email, uniqueness: true 
end
