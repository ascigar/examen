class User < ApplicationRecord
    before_save {self.email = email.downcase}
    validates :nombre, presence: true
    VALID_EMAIL_REX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z]+\z/i
    validates :email, confirmation: true, format: {with: VALID_EMAIL_REX }, uniqueness: {case_sensitive: false}, length: {maximum: 105}
    validates :rfc, uniqueness: true, length: { in: 10..16}
    has_secure_password
end