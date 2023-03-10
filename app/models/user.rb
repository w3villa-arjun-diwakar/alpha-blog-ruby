class User < ApplicationRecord
    before_save { self.email = email.downcase }
    has_many :articles, dependent: :destroy 
    validates :username, presence: true, uniqueness: { case_sensitive: false } , length: {minimum:5, maximum:25}
    validates :email, uniqueness: true, uniqueness: { case_sensitive: false } , length: {maximum:100}   
    has_secure_password
    
end
