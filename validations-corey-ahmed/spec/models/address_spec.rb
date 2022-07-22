require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'it is not valid without street_name, street_number,city,state,zip' do
    address = Address.create()
      expect(address.errors[:street_name]).to_not be_empty
      expect(address.errors[:street_number]).to_not be_empty
      expect(address.errors[:city]).to_not be_empty
      expect(address.errors[:state]).to_not be_empty
      expect(address.errors[:zip]).to_not be_empty
      expect(address.errors[:account_id]).to_not be_empty
    end
end
