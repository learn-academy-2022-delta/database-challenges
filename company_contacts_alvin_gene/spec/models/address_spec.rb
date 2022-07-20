require 'rails_helper'

RSpec.describe Address, type: :model do
  it 'is not valid without account_id' do
    address = Address.create street_number:254, street_name:'Dr. Doolittle',    city:'san diego', state:'CA', zip:76543
    expect(address.errors[:account_id]).to_not be_empty
  end
end

