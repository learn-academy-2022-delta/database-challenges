class Address < ApplicationRecord
belongs_to :account
validates :street_name, :street_number, :city, :state, :zip, :account_id, presence:true

end
