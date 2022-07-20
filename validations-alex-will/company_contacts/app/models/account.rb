class Account < ApplicationRecord
    validates :user_name, :password, :email, presence: true
    validates :user_name, length: {minimum: 5}
    validates :user_name, uniqueness: true
    validates :user_name, uniqueness: { case_sensitive: false}
    validates :password, length: {minimum: 6}
    validates :password, uniqueness: true
    validates :password, uniqueness: { case_sensitive: false}
end
