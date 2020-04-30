class User < ApplicationRecord
  validates :name, presence: true
  validates :name, length:{ maximum: 15 }
  validates :email, presence: true
  validates :email, format: { with: /\A\S+@\S+\.\S+\z/ }
  validates :password, length:{ minimum:8, maximum:32 }
  validates :password, format: { with: /(?=.*\d+.*)(?=.*[a-zA-Z]+.*)./}
  
  has_secure_password
end
