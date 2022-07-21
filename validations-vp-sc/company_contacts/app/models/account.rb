class Account < ApplicationRecord
    validates :username, :password, :email, presences: true
    validates :username,length: {in: 5..15}
    validates :username, uniqueness: true
    validates :password,length: {in: 6..18}
    validates :password, uniqueness: true
end
