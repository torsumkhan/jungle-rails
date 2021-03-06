class User < ApplicationRecord

    has_secure_password

    validates :first_name, presence: true
    validates :last_name, presence: true
    # validates :email, presence: true
    validates :password, presence: true
    validates :email, presence: true, uniqueness: { case_sensitive: false }
    # validates :password, presence: true, length: { minimum: 10 }
    validates :password_confirmation, presence: true



end
