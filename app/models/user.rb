class User < ApplicationRecord
    has_many :messages
    validates :username, presence: true, length: { minimum: 3, maximum: 50 },
    uniqueness: { case_sensitive: false }
    has_secure_password
end
