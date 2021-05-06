class User < ApplicationRecord
    has_secure_password
    has_many :properties

    validates :name, presence: true
    validates :email, uniqueness: true
end
