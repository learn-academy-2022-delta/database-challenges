class Address < ApplicationRecord
    belongs_to :account
    validates :street_number, :street_name, :city, :state, :zip, :account_id, presence: true
end
