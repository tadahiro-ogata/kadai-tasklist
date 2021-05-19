class User < ApplicationRecord
<<<<<<< HEAD
     before_save { self.email.downcase! }
=======
  before_save { self.email.downcase! }
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password
<<<<<<< HEAD
  
  has_many :tasks
end
=======
end
>>>>>>> 233b73be775fddbe479d442da7bdde594450fdd9
