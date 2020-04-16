class User < ApplicationRecord
    validates :name, presence: true
    validates :email, :password_digest, {presence: true, uniqueness: true}
end