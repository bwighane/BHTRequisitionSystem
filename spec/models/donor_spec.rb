require 'rails_helper'

RSpec.describe Donor, type: :model do
  it "is valid with valid attributes" do
    donor = create(:donor)
    expect(donor).to be_valid
  end

  it "is invalid without name" do
    donor = create(:donor)
    donor.name = nil
    expect(donor).to_not be_valid
  end
end
