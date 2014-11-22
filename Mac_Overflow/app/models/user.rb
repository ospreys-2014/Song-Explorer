class User < ActiveRecord::Base
   has_secure_password
   has_many :entries
   has_many :comments

   validates :name, presence: true, length: { minimum: 2, maximum: 50 }
   validates :password, length: { minimum: 3 }

end