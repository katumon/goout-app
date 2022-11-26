class User < ApplicationRecord
    has_secure_password
    validates :name,  presence: true, length: { maximum: 10 }
    validates :email,  presence: true, length: { maximum: 70 }
end
